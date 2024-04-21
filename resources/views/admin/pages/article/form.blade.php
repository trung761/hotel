<script src="https://cdn.ckeditor.com/ckeditor5/35.2.1/classic/ckeditor.js"></script>
<form class="form" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
        <label class="form-label">Tên bài viết</label>
        <input type="text" class="form-control" name="ten" value="{{ old('name', $article->ten ?? '') }}" aria-describedby="emailHelp" placeholder="Tên bài viết">
    </div>
    <div class="mb-3">
        <label class="form-label">Mô tả</label>
        <textarea name="mota" id="" cols="4" rows="2" class="form-control">{{ old('name', $article->mota ?? '') }}</textarea>
    </div>
    <div class="mb-3">
        <label class="form-label">Nội dung</label>
        <textarea name="noidung" id="editor" cols="4" rows="2" class="form-control">{{ old('content', $article->noidung ?? '') }}</textarea>
    </div>
    <div class="mb-3">
        <label class="form-label">Avatar</label>
        <input type="file" name="anhdaidien">
    </div>

    <button type="submit" class="btn btn-primary">Lưu dữ liệu</button>
</form>


<script>
    ClassicEditor.create(document.querySelector('#editor'))
        .then(editor => {
            console.log(editor);
        })
        .catch(error => {
            console.error(error);
        });
</script>