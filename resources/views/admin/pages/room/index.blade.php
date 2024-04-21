@extends('admin.layouts.app_master_admin')
@section('content')
<h2 class="mt-4" style="display: flex;justify-content: space-between"><span>Danh sách tin đăng</span></h2>
<div class="mt-4">
    <form action="" class="row">
        <div class="col-sm-3">
            <input type="text" placeholder="Name" value="{{ Request::get('ten') }}" name="ten" class="form-control">
        </div>
        <div class="col-sm-3">
            <select name="danhmuc_id" class="form-control" id="">
                <option value="">Danh mục</option>
                @foreach($categories as $item)
                <option {{ Request::get('danhmuc_id') == $item->id ? "selected" : "" }} value="{{ $item->id }}">
                    {{ $item->ten }}
                </option>
                @endforeach
            </select>
        </div>
        <div class="col-sm-3">
            <button type="submit" class="btn btn-primary">Find</button>
        </div>
    </form>
</div>
<div class="table table-hover mt-4">
    <table class="table">
        <thead>
            <tr>
                <th style="width:50px;">Id</th>
                <th style="width: 100px;">Ảnh đại </th>
                <th style="width: 350px;">Thông tin</th>
                <th>Danh mục</th>
                <th>Giá</th>
                <th>Bắt đầu</th>
                <th>Kết thúc</th>
                <th>Trạng thái</th>
            </tr>
        </thead>
        <tbody>
            @foreach($rooms ?? [] as $item)
            <tr>
                <td>#{{ $item->id }}</td>
                <td>
                    <div style="overflow: hidden;width: 100px;height: 100px;margin: 0 auto;position: relative;">
                        <a href="{{ route('get.room.detail',['id' => $item->id,'slug' => $item->slug]) }}"
                            target="_blank">
                            <img src="{{ pare_url_file($item->anhdaidien) }}" alt=""
                                style="display: block;width: 100%;height: 100%;object-fit: cover;">
                        </a>
                    </div>
                </td>
                <td>
                    <a href="{{ route('get.room.detail',['id' => $item->id,'slug' => $item->slug]) }}" target="_blank"
                        style="font-size: 14px;font-weight: 500;color: #007aff;text-decoration: none">
                        @if ($item->dichvu_hot > 0)
                        @for($i = 1 ; $i <= $item->dichvu_hot ; $i ++)
                            <span style="color: #fed553" class="fa fa-star"></span>
                            @endfor
                            @endif
                            {{ $item->ten }}
                    </a>
                    <p style="font-size: 14px;font-weight: 400;color: #212121;text-decoration: none;margin-bottom: 5px">
                        <span class="fa fa-map-marker"></span>
                        @if (isset($item->wards->ten))
                        <span>{{ $item->wards->ten ?? "" }} - </span>
                        @endif
                        @if (isset($item->district))
                        <span>{{ $item->district->ten }}</span>
                        @endif
                    </p>
                    <p style="margin-bottom: 2px">
                        @if ($item->trangthai != \App\Models\Phong::STATUS_ACTIVE)
                        <a href="{{ route('get_admin.room.success', $item->id) }}" class="text-success"
                            style="font-size: 13px;text-decoration: none;font-weight: 500"><i class="fa fa-refresh"></i>
                            Duyệt</a>
                        <a href="{{ route('get_admin.room.expires', $item->id) }}" class="text-warning"
                            style="font-size: 13px;text-decoration: none;font-weight: 500"><i
                                class="fa fa-credit-card"></i> Hết hạn</a>
                        @endif
                        @if ($item->trangthai == \App\Models\Phong::STATUS_ACTIVE)
                        <a href="{{ route('get_admin.room.hide', $item->id) }}" class="text-secondary"
                            style="font-size: 13px;text-decoration: none"> <i class="fa fa-eye-slash"></i> Ẩn tin</a>
                        @endif
                        <!-- <a href="{{ route('get_admin.room.cancel', $item->id) }}" class="text-danger"
                            style="font-size: 13px;text-decoration: none;font-weight: 500"><i class="fa fa-times"></i>
                            Huỷ</a> -->
                        <a href="{{ route('get_admin.room.delete', $item->id) }}" class="text-danger"
                            style="font-size: 13px;text-decoration: none;font-weight: 500"> <i
                                class="fa fa-trash"></i>Delete</a>
                    </p>
                    @if ($item->trangthai == \App\Models\Phong::STATUS_CANCEL)
                    <p style="margin-bottom: 2px;font-size: 12px"><i class="text-danger">{{ $item->lydo }}</i></p>
                    @endif
                </td>
                <td><span class="label label-danger"
                        style="font-size: 14px">{{ $item->category->ten ?? "[N\A]" }}</span></td>
                <td><span style="font-size: 14px">{{ number_format($item->gia,0,',','.') }} triệu / tháng</span></td>
                <td>
                    <p style="font-size: 14px;margin-bottom: 5px;"><span>{{ $item->thoigian_batdau }}</span></p>
                </td>
                <td>
                    <p style="font-size: 14px;"><span>{{ $item->thoigian_ketthuc }}</span></p>
                </td>
                <td>
                    <span style="font-size: 14px;"
                        class="{{ $item->getStatus($item->trangthai)['class'] ?? "..." }}">{{ $item->getStatus($item->trangthai)['name'] ?? "..." }}</span>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
<div>
    {!! $rooms->appends($query ?? [])->links('vendor.pagination.bootstrap-4') !!}
</div>
@stop