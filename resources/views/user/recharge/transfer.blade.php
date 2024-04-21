@extends('frontend.layouts.app_master')
@section('title', 'Trang chủ')
@push('css')
    <link href="/css/home.css" rel="stylesheet">
@endpush

@section('content')
    <section class="breadcrumb">
        <ol>
            <li>
                <a href="">
                    <span>Trang chủ</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span>Nạp tiền</span>
                </a>
            </li>
            <li>
                <span>Chuyển khoản</span>
            </li>
        </ol>
    </section>
    <h1 class="page-title-h1">Chuyển khoản</h1>
    <style>
        .alert-warning {
            color: #856404;
            background-color: #fff3cd;
            border-color: #ffeeba;
        }
    </style>
    <div class="setup_info">
        <div class="alert alert-warning" role="alert">
            <p><strong>Lưu ý quan trọng:</strong></p>
            <p>- Nội dung chuyển tiền bạn vui lòng ghi đúng thông tin sau:</p>
            <p>
            </p>
            <p><strong style="color: red;">"PTCT - 104768 - 0949083414"</strong></p>
            <p>Trong đó 104768 là mã thành viên, 0949083414 là số điện thoại của bạn đăng ký trên website phongtrocantho.vn.
            </p>
            <p>Xin cảm ơn!</p>
        </div>
    </div>
    
<div class="setup_mb_table">
<div class="setup_table">
        <table class="table table-bordered table-striped">
            <tbody>
                <tr>
                    <td><strong>Ngân hàng</strong></td>
                    <td><strong>Chủ tài khoản</strong></td>
                    <td><strong>Số tài khoản</strong></td>
                    <td><strong>Chi nhánh</strong></td>
                    <td><strong>Nội dung chuyển khoản</strong></td>
                </tr>
                <tr>
                    <td><strong style="color: red;">VIETCOMBANK</strong> - NGÂN HÀNG THƯƠNG MẠI CỔ PHẦN NGOẠI THƯƠNG VIỆT NAM
                    </td>
                    <td style="white-space: nowrap;">VŨ TUẤN ANH</td>
                    <td style="white-space: nowrap;"><div id="text-copy1" style="text-align:center">123456789</div><button onclick="copyToClipboard('text-copy1')" class="btn btn-secondary btn-copy js-btn-copy"
                            title="Sao chép liên kết" data-clipboard-text="0071000939534"><span class="icon-copy">Sao
                                chép</span></button></td>
                    <td style="white-space: nowrap;">TP CẦN THƠ</td>
                    <td rowspan="6" style="white-space: nowrap; color: red;">Nội dung chuyển khoản, bạn ghi rõ:<br>
                        <strong>"<span id="text-copy2" style="text-align:center">PTCT - 104768999 - 0949083414</span>"</strong><button style="display:block; margin:0 auto" onclick="copyToClipboard('text-copy2')"
                            class="btn btn-secondary btn-copy js-btn-copy" title="Sao chép liên kết"
                            data-clipboard-text="PTct - 104768 - 0949083414"><span class="icon-copy">Sao chép</span></button>
                    </td>
                </tr>
                <tr>
                    <td><strong style="color: red;">VIETINBANK</strong> - NGÂN HÀNG ĐẦU TƯ VÀ PHÁT TRIỂN VIỆT NAM</td>
                    <td style="white-space: nowrap;">VŨ TUẤN ANH</td>
                    <td style="white-space: nowrap;"><div id="text-copy3" style="text-align:center">123456789</div><button onclick="copyToClipboard('text-copy3')" class="btn btn-secondary btn-copy js-btn-copy"
                            title="Sao chép liên kết" data-clipboard-text="999999"><span class="icon-copy">Sao
                                chép</span></button></td>
                    <td style="white-space: nowrap;">TP CẦN THƠ</td>

                </tr>


            </tbody>
        </table>
    </div>
</div>

    
@stop

@push('script')
    <script src="/js/home.js"></script>
@endpush
