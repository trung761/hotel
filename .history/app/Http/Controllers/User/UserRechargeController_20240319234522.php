<?php

namespace App\Http\Controllers\User;

use App\Models\NguoiDung;
use App\Http\Controllers\Controller;
use App\Models\LichSuNapTien;
use App\Models\LichSuThanhToan;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;


class UserRechargeController extends Controller
{
    public function index()
    {
        $recharge = config('payment.method');

        $viewData = [
            'recharge' => $recharge
        ];

        return view('user.recharge.index', $viewData);
    }

    public function switchRecharge($slug, $code, Request $request)
    {
        switch ($code) {
            case 1:
                return view('user.recharge.transfer');
            case 2;
                return view('user.recharge.cash');
            case 3;
                return redirect()->route('get_user.recharge.atm');
        }
    }

    public function rechargeHistory()
    {
        $rechargeHistory = LichSuNapTien::with('user:id,ten')
            ->where('nguoidung_id', get_data_user('web'))
            ->orderByDesc('id')
            ->paginate(20);

        $viewData = [
            'rechargeHistory' => $rechargeHistory
        ];

        return view('user.recharge.history', $viewData);
    }

    public function paymentHistory()
    {
        $paymentHistory = LichSuThanhToan::with('user:id,ten')
            ->where('nguoidung_id', get_data_user('web'))
            ->orderByDesc('id')->paginate(20);

        $viewData = [
            'paymentHistory' => $paymentHistory
        ];

        return view('user.recharge.payment', $viewData);
    }

    public function atmInternet(Request $request)
    {
        return view('user.recharge.atm_internet');
    }

    public function processAtmInternet(Request $request)
    {
        try {
            $data                = $request->except('_token');
            $data['created_at']  = Carbon::now();
            $data['tien']       = $request->gia;
            $data['nguoidung_id']     = get_data_user('web');
            $data['tongtien'] = $data['tien'];
            $data['loai']        = 3;
            $data['ma']        = generateRandomString(15) . $data['nguoidung_id'];
            $rechargeHistory     = LichSuNapTien::create($data);
            $this->createPaymentAtm($rechargeHistory);
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
        }

        return redirect()->back();
    }

    protected function createPaymentAtm($rechargeHistory)
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');

        $vnp_TmnCode = "1J41K9IH"; //Website ID in VNPAY System
        $vnp_HashSecret = "RGXTPJWTMKZVBJPSEXIYYQFNWRYNQKSR"; //Secret key
        $vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = "";
        $vnp_apiUrl = "http://sandbox.vnpayment.vn/merchant_webapi/merchant.html";

        $startTime = date("YmdHis");
        $expire = date('YmdHis', strtotime('+15 minutes', strtotime($startTime)));

        $vnp_TxnRef = $rechargeHistory->ma;
        $vnp_OrderInfo = 'Nạp tiền';
        $vnp_OrderType = 'other';
        $vnp_Amount = $rechargeHistory->tongtien * 100;
        $vnp_Locale = 'vn';
        $vnp_BankCode = 'NCB';
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
        //        $vnp_ExpireDate = $_POST['txtexpire'];
        $vnp_Bill_Mobile = get_data_user('web', 'sodienthoai');
        $vnp_Bill_Email = get_data_user('web', 'email');
        $fullName = get_data_user('web', 'ten');
        if (isset($fullName) && trim($fullName) != '') {
            $name = explode(' ', $fullName);
            $vnp_Bill_FirstName = array_shift($name);
            $vnp_Bill_LastName = array_pop($name);
        }

        $vnp_Bill_Country = 'VN';

        $vnp_Inv_Phone = $vnp_Bill_Mobile;
        $vnp_Inv_Email = $vnp_Bill_Email;
        $vnp_Inv_Customer = 'VŨ TUẤN ANH';
        $vnp_Inv_Address = 'Cần Thơ';
        $vnp_Inv_Taxcode = '0949083414';
        $vnp_Inv_Type = 'I';
        $inputData = array(
            "vnp_Version" => "2.1.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
            "vnp_Bill_Mobile" => $vnp_Bill_Mobile,
            "vnp_Bill_Email" => $vnp_Bill_Email,
            "vnp_Bill_Country" => $vnp_Bill_Country,
            "vnp_Inv_Phone" => $vnp_Inv_Phone,
            "vnp_Inv_Email" => $vnp_Inv_Email,
            "vnp_Inv_Customer" => $vnp_Inv_Customer,
            "vnp_Inv_Address" => $vnp_Inv_Address,
            "vnp_Inv_Taxcode" => $vnp_Inv_Taxcode,
            "vnp_Inv_Type" => $vnp_Inv_Type
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
            $inputData['vnp_Bill_State'] = $vnp_Bill_State;
        }

        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
            } else {
                $hashdata .= urlencode($key) . "=" . urlencode($value);
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret); //
            $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
        }

        header('Location: ' . $vnp_Url);
        die();
    }

    public function postbackAtm(Request $request)
    {
        try {
            DB::beginTransaction();
            $code = $request->vnp_TxnRef;
            $rechargeHistory     = LichSuNapTien::where('ma', $code)->first();
            if (!$rechargeHistory) {
                return redirect()->route('get_user.recharge.atm');
            }
            $statusCode = $request->vnp_TransactionStatus;
            if ($statusCode == '00') {
                // tiến hành cộng tiền
                // Tiếp hành update code
                $rechargeHistory->trangthai = LichSuNapTien::STATUS_SUCCESS;
                $rechargeHistory->save();

                $user = NguoiDung::find($rechargeHistory->nguoidung_id);
                if (!$user) {
                    $rechargeHistory->ghichu   = 'User không hợp lệ';
                    $rechargeHistory->trangthai = LichSuNapTien::STATUS_CANCEL;
                    $rechargeHistory->save();
                    DB::commit();
                    // show thông báo
                    return redirect()->route('get_user.recharge.atm');
                } else {
                    Log::info("--- cộng tiền");
                    $user->sodukhadung += $rechargeHistory->tongtien;
                    $user->save();
                }
                DB::commit();
                return  redirect()->route('get_user.recharge.history');
            }
            switch ($statusCode) {
                case "01":
                    $message = "Giao dịch chưa hoàn tất";
                    break;
                case "02":
                    $message = "Giao dịch bị lỗi";
                    break;
                case "04":
                    $message = "VGiao dịch đảo (Khách hàng đã bị trừ tiền tại Ngân hàng nhưng GD chưa thành công ở VNPAY)";
                    break;
                case "05":
                    $message = "VNPAY đang xử lý giao dịch này (GD hoàn tiền)";
                    break;
                case "06":
                    $message = "VNPAY đã gửi yêu cầu hoàn tiền sang Ngân hàng (GD hoàn tiền)";
                    break;
                case "07":
                    $message = "Giao dịch bị nghi ngờ gian lận";
                    break;
                case "09":
                    $message = "GD Hoàn trả bị từ chối";
                    break;
            }

            $rechargeHistory->trangthai = LichSuNapTien::STATUS_ERROR;
            $rechargeHistory->ghichu = $message;
            $rechargeHistory->save();
            // show thông báo
            DB::commit();
            return redirect()->route('get_user.recharge.atm');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error("------------ postbackAtm" . $exception->getMessage());
            return redirect()->route('get_user.recharge.atm');
        }
    }
}
