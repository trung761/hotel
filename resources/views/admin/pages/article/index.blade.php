@extends('admin.layouts.app_master_admin')
@section('content')
<h2 class="mt-3" style="display: flex;justify-content: space-between"><span>Danh sách bài viết</span> <a
        href="{{ route('get_admin.article.create') }}" style="font-size: 16px;">Thêm mới</a></h2>
<div class="">
    <form action="" class="row">
        <div class="col-sm-3">
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
            <th style="width: 20px;">#</th>
            <th style="width: 80px;">Avatar</th>
            <th style="width: 65%;">Thông tin</th>
            <th style="width: 200px">Ngày tạo</th>
            <th>Tuỳ chọn</th>

        </tr>
    </thead>
    <tbody>
        @foreach($articles ?? [] as $item)
        <tr>
            <td scope="row">{{ $item->id }}</td>
            <td scope="row">
                <img src="{{ pare_url_file($item->anhdaidien) }}" alt=""
                    style="display: block;width: 100px;height: auto;object-fit: cover;">
            </td>
            <td scope="row">
                <h5>{{ $item->ten }}</h5>
                <p>{{ $item->mota }}</p>
            </td>
            <td scope="row">{{ $item->created_at }}</td>
            <td scope="row">
                <a href="{{ route('get_admin.article.update', $item->id) }}" class="text-blue"><i
                        class="bi bi-pencil-square"></i> </a>
                <a href="{{ route('get_admin.article.delete', $item->id) }}" class="text-danger"
                    style="margin-left: 20px"><i class="bi bi-trash"></i></a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@stop