@extends('admin.layouts.app_master_admin')
@section('content')
<h2 class="mt-3" style="display: flex;justify-content: space-between"><span>Huỷ bỏ tin</span></h2>

<form class="form" method="POST">
    @csrf
    <div class="mb-3">
        <label class="form-label">Lý do huỷ tin</label>
        <textarea name="lydo" id="" cols="4" rows="2"
            class="form-control">{{ old('lydo', $room->lydo ?? '') }}</textarea>
    </div>
    <button type="submit" class="btn btn-primary">Lưu dữ liệu</button>
</form>

@stop