@extends('admin.layouts.app_master_admin')
@section('content')
<h2 class="mt-3" style="display: flex;justify-content: space-between"><span>Danh sách nạp tiền</span> <a
        href="{{ route('get_admin.recharge.create') }}" style="font-size: 16px;">Thêm mới</a></h2>
<table class="table table-hover">
    <thead>
        <tr>
            <th>Mã giao dịch</th>
            <th>Hình thức</th>
            <th>Khách hàng</th>
            <th>Số tiền</th>
            <th>Khuyến mãi</th>
            <th>Tổng tiền</th>
            <th>Trạng thái</th>
            <!-- <th>Ghi chú</th> -->
            <th>Ngày tạo</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach($rechargeHistory ?? [] as $item)
        <tr>
            <td scope="row">{{ $item->ma }}</td>
            <td>
                @if ($item->loai == 1)
                <span>Chuyển khoản</span>
                @elseif($item->loai == 2)
                <span>Tiền mặt</span>
                @elseif($item->loai == 3)
                <span>Thẻ ATM Internet Banking</span>
                @else
                @endif
            </td>
            <td scope="row">{{ $item->user->ten ?? "..." }}</td>
            <td scope="row">{{ number_format($item->tien,0,',','.') }}đ</td>
            <td scope="row">{{ number_format($item->giamgia,0,',','.') }}đ</td>
            <td scope="row"><span class="text-danger text-bold">{{ number_format($item->tongtien,0,',','.') }}đ</span>
            </td>
            <td scope="row"><span
                    class="{{ $item->getStatus($item->trangthai)['class'] }}">{{ $item->getStatus($item->trangthai)['name'] }}</span>
            </td>
            <!-- <td scope="row">
                @if ($item->trangthai == \App\Models\LichSuNapTien::STATUS_CANCEL)
                <span class="text-danger" style="font-size: 13px;">{{ $item->ghichu }}</span>
                @endif
            </td> -->
            <td scope="row">{{ $item->created_at }}</td>
            <td scope="row">
                @if ($item->trangthai != \App\Models\LichSuNapTien::STATUS_SUCCESS)
                <a href="{{ route('get_admin.recharge.update', $item->id) }}" class="text-blue"><i
                        class="bi bi-pencil-square"></i></a>

                @endif
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
<div>
    {!! $rechargeHistory->appends($query ?? [])->links('vendor.pagination.bootstrap-4') !!}
</div>
@stop