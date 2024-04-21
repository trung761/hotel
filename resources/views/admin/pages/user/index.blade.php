@extends('admin.layouts.app_master_admin')
@section('content')
<h2 class="mt-3" style="display: flex;justify-content: space-between"><span>Danh sách thành viên</span> </h2>
<div class="">
    <form action="" class="row">
        <div class="col-sm-3 ">
            <input type="text" placeholder="Name" value="{{ Request::get('n') }}" name="n" class="form-control">
        </div>
        <div class="col-sm-3">
            <button type="submit" class="btn btn-primary">Find</button>
        </div>
    </form>
</div>
<table class="table table-hover">
    <thead>
        <tr>
            <th>#</th>
            <th>Ảnh đại diện</th>
            <th>Tên</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Ngày tạo</th>
            <th>Tuỳ chọn</th>
        </tr>
    </thead>
    <tbody>
        @foreach($users ?? [] as $item)
        <tr>
            <td scope="row">{{ $item->id }}</td>
            <td scope="row">
                <img src="{{ pare_url_file($item->anhdaidien) }}" style="width: 60px;height: 60px;border-radius: 50%"
                    alt="">
            </td>
            <td scope="row">{{ $item->ten }}</td>
            <td scope="row">{{ $item->email }}</td>
            <td scope="row">{{ $item->sodienthoai }}</td>
            <td scope="row">{{ $item->created_at }}</td>
            <td scope="row">
                <a href="{{ route('get_admin.user.update', $item->id) }}"><i class="bi bi-pencil-square"></i></a>
                <a href="{{ route('get_admin.user.delete', $item->id) }}" class="text-danger"
                    style="margin-left: 20px"><i class="bi bi-trash"></i></a>

            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@stop