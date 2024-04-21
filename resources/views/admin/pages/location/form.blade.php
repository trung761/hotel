<form class="form" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
        <label class="form-label">Tên</label>
        <input type="text" class="form-control" name="ten" value="{{ old('name', $location->ten ?? '') }}" aria-describedby="emailHelp" placeholder="Tên location">
    </div>
    <div class="mb-3">
        <label class="form-label">Phân loại</label>
        <select class="form-select" name="loai" aria-label="Default select example">
            <option value="1" {{ ($location->loai ?? 1)  == 1 ? "selected" : "" }}>Quận huyện</option>
            <option value="2" {{ ($location->loai ?? 1)  == 2 ? "selected" : "" }}>Phường xã</option>
            <!-- <option value="3" {{ ($location->type ?? 1)  == 3 ? "selected" : "" }}>Phường xã</option> -->
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Parent</label>
        <select class="form-select" name="parent_id" aria-label="Default select example">
            <option value="0"></option>
            @foreach(collect($district ?? [])->where('parent_id', '==', 0) as $item)
            <option value="{{ $item->id }}" {{ $item->id == ($location->parent_id ?? 0) ? "selected" : "" }}>
                {{ $item->ten }}
            </option>
            @endforeach

        </select>
    </div>
    <div class="mb-3">
        <label for="name">Ảnh bìa</label>
        <input type="file" name="anhdaidien">
    </div>
    <div class="mb-3">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="hot" {{ ($location->hot ?? 0) == 1 ? "checked" : "" }} id="flexRadioDefault1" value="1">
            <label class="form-check-label" for="flexRadioDefault1">
                Nổi bật
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="hot" {{ ($location->hot ?? 0) == 0 ? "checked" : "" }} id="flexRadioDefault2" value="0">
            <label class="form-check-label" for="flexRadioDefault2">
                Không nổi bật
            </label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Lưu dữ liệu</button>
</form>

@push('script')
<script src="/js/user_room.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/js/fileinput.js" type="text/javascript">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/themes/fa/theme.js" type="text/javascript"></script>

<script>
    $(function() {
        $("#qhuyen_id").change(function() {
            let $this = $(this);
            let qhuyen_id = $this.val();
            console.log('----', qhuyen_id);

            $.ajax({
                    url: URL_LOAD_DISTRICT,
                    data: {
                        qhuyen_id: qhuyen_id
                    },
                })
                .done(function(data) {
                    if (data) {
                        let options = `<option value="0"> Chọn phường xã </option>`;
                        data.map((item, index) => {
                            options += `<option value="${item.id}"> ${item.ten}</option>`
                        })
                        $("#phuongxa_id").html(options);
                    }
                    console.log('---------- data: ', data);
                });
        })

        $("#phuongxa_id").change(function() {
            let $this = $(this);
            let phuongxa_id = $this.val();
            console.log('----', phuongxa_id);

            $.ajax({
                    url: URL_LOAD_WARD,
                    data: {
                        phuongxa_id: phuongxa_id
                    },
                })
                .done(function(data) {
                    if (data) {
                        let options = `<option value="0"> Chọn phường xã </option>`;
                        data.map((item, index) => {
                            options += `<option value="${item.id}"> ${item.ten}</option>`
                        })
                        $("#huyen_id").html(options);
                    }
                    console.log('---------- data: ', data);
                });
        })
    })
</script>
@endpush