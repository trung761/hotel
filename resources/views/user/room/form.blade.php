<form action="" method="POST" autocomplete="off" enctype="multipart/form-data">
    @csrf
    <style>
    .ck-blurred,
    .ck-content {
        min-height: 200px;
    }
    </style>
    <div class="form-room container">
        <div class="room-left">
            <h4>Địa chỉ cho thuê</h4>
            <div class="row-lists">
                <div class="form-group row-lists-3">
                    <label class="search_field_item_label">Quận huyện</label>
                    {{-- <select id="search_city" class="form-control tinh-tp js_select2_tinhthanh js-select-tinhthanhpho select2-hidden-accessible" name="location_city_id" tabindex="-1" aria-hidden="true">--}}
                    {{-- <option value="">Tất cả</option>--}}
                    {{-- @foreach($locationsCity ?? [] as $item)--}}
                    {{-- <option value="{{ $item->id }}"
                    {{ Request::get('location_city_id') == $item->id ? "selected" : "" }}>{{ $item->ten }}</option>--}}
                    {{-- @endforeach--}}
                    {{-- </select>--}}
                    <select name="qhuyen_id" class="form-control" id="qhuyen_id"
                        data-placeholder="Click chọn quận huyện">
                        <option value="">Chọn quận huyện</option>
                        @foreach($locationsCity ?? [] as $item)
                        <option value="{{ $item->id }}"
                            {{ $item->id == ($room->qhuyen_id ?? (Request::get('qhuyen_id'))) ? "selected" : ""}}>
                            {{ $item->ten }}
                        </option>
                        @endforeach
                    </select>
                    @if ($errors->first('qhuyen_id'))
                    <span class="text-error">{{ $errors->first('qhuyen_id') }}</span>
                    @endif
                </div>
                <div class="form-group row-lists-3">
                    <label for="name">Phường xã</label>
                    <select name="phuongxa_id" class="form-control " id="phuongxa_id"
                        data-placeholder="Click chọn quận huyện">
                        <option value="">Chọn phường xã</option>
                        @foreach($wards ?? [] as $item)
                        <option value="{{ $item->id }}" {{ $item->id == ($room->phuongxa_id ?? 0) ? "selected" : ""}}>
                            {{ $item->ten }}
                        </option>
                        @endforeach
                    </select>
                    @if ($errors->first('phuongxa_id'))
                    <span class="text-error">{{ $errors->first('phuongxa_id') }}</span>
                    @endif
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group">
                    <label for="name">Số nhà</label>
                    <input type="text" name="sophong" class="form-control" placeholder="Số nhà"
                        value="{{ $room->sophong ?? '' }}">
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group w-100">
                    <label for="name">Địa chỉ chính xác</label>
                    <input type="text" name="chitietdiachi" class="form-control" placeholder="Địa chỉ chính xác"
                        value="{{ $room->chitietdiachi ?? '' }}">
                </div>
            </div>
            <h4>Thông tin mô tả</h4>
            <div class="row-lists">
                <div class="form-group row-lists-3">
                    <label for="name">Loại chuyên mục</label>
                    <select name="danhmuc_id" class="form-control" id="" data-placeholder="Click chọn danh mục">
                        @foreach($categories ?? [] as $item)
                        <option value="{{ $item->id }}" {{ $item->id == ($room->danhmuc_id ?? 0) ? "selected" : ""}}>
                            {{ $item->ten }}
                        </option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group w-100">
                    <label for="name">Tiêu đề</label>
                    <input type="text" class="form-control" name="ten" placeholder="Tiêu đề"
                        value="{{ $room->ten ?? ' ' }}">
                    @if ($errors->first('ten'))
                    <span class="text-error">{{ $errors->first('ten') }}</span>
                    @endif
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group w-100">
                    <label for="name">Ảnh bìa</label>
                    <input type="file" name="anhdaidien">
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group w-100">
                    <label for="name">Mô tả nội dung</label>
                    <textarea name="mota" class="form-control" id="editor" cols="30"
                        rows="3">{{ $room->mota ?? "" }}</textarea>
                    @if ($errors->first('mota'))
                    <span class="text-error">{{ $errors->first('mota') }}</span>
                    @endif
                </div>
            </div>

            <div class="row-lists">
                <div class="form-group w-100">
                    <label for="name">Map</label>
                    <textarea name="map" class="form-control" id="" cols="30" rows="3">{{ $room->map ?? "" }}</textarea>
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group">
                    <label for="name">Thông tin liên hệ</label>
                    <input type="text" class="form-control" disabled placeholder="Thông tin liên hệ"
                        value="{{ \Auth::user()->ten }}">
                </div>
            </div>
            <div class="row-lists">
                <div class="box box-warning">
                    <div class="box-header with-border">
                        <h3 class="box-title">Album ảnh</h3>
                    </div>
                    <div class="box-body">
                        @if (isset($images))
                        <div class="row" style="margin-bottom: 15px;display: flex">
                            @foreach($images as $item)
                            <div class="col-sm-2" style="margin-right: 10px;">
                                <a href="{{ route('get_user.room.delete_image', $item->id) }}" style="display: block;">
                                    <img src="{{ pare_url_file($item->duongdan) }}" style="width: 300px;height: auto">
                                </a>
                            </div>
                            @endforeach
                        </div>
                        @endif
                        <div class="form-group">
                            <div class="file-loading">
                                <input id="images" type="file" name="file[]" multiple class="file"
                                    data-overwrite-initial="false" data-min-file-count="0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group">
                    <label for="name">Điện thoại</label>
                    <input type="text" class="form-control" disabled placeholder="Điện thoại"
                        value="{{ \Auth::user()->sodienthoai }}">
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group">
                    <label for="name">Giá cho thuê ( Đồng )</label>
                    <input type="text" class="input-price" name="gia" class="form-control" placeholder=""
                        value="{{ number_format($room->gia ?? 0,0,',','.') ?? 0 }}">
                </div>
            </div>
            <div class="row-lists">
                <div class="form-group">
                    <label for="name">Diện tích ( m2 )</label>
                    <input type="text" name="khuvuc" class="form-control" placeholder=""
                        value="{{ $room->khuvuc ?? 0 }}">
                </div>
            </div>
            <button type="submit" class="btn btn-success" style="margin-bottom: 20px;">Lưu dữ liệu</button>
        </div>
        <div class="room-right">
            <div class="card mb-5" style="color: #856404; background-color: #fff3cd; border-color: #ffeeba;">
                <div class="card-body">
                    <h4 class="card-title">Lưu ý khi đăng tin</h4>
                    <ul>
                        <li style="list-style-type: square; margin-left: 15px;">Nội dung phải viết bằng tiếng Việt có
                            dấu</li>
                        <li style="list-style-type: square; margin-left: 15px;">Tiêu đề tin không dài quá 100 kí tự</li>
                        <li style="list-style-type: square; margin-left: 15px;">Các bạn nên điền đầy đủ thông tin vào
                            các mục để tin đăng có hiệu quả hơn.</li>
                        <li style="list-style-type: square; margin-left: 15px;">Để tăng độ tin cậy và tin rao được nhiều
                            người quan tâm hơn, hãy sửa vị trí tin rao của bạn trên bản đồ bằng cách kéo icon tới đúng
                            vị trí của tin rao.</li>
                        <li style="list-style-type: square; margin-left: 15px;">Tin đăng có hình ảnh rõ ràng sẽ được xem
                            và gọi gấp nhiều lần so với tin rao không có ảnh. Hãy đăng ảnh để được giao dịch nhanh
                            chóng!</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
var URL_LOAD_DISTRICT = '{{ route("get_user.load.district") }}'
var URL_LOAD_WARD = '{{ route("get_user.load.wards") }}'
</script>
@push('script')
<script src="/js/user_room.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/38.0.1/classic/ckeditor.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/css/fileinput.css" media="all"
    rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/js/fileinput.js" type="text/javascript">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/themes/fa/theme.js"
    type="text/javascript"></script>
<script type="text/javascript">
var inputField = document.querySelector('.input-price')
inputField.oninput = function() {
    var removeChar = this.value.replace(/[^0-9\.]/g, '') // This is to remove alphabets and special characters.
    // console.log(removeChar);
    var removeDot = removeChar.replace(/\./g, '') // This is to remove "DOT"
    this.value = removeDot

    var formatedNumber = this.value.replace(/\B(?=(\d{3})+(?!\d))/g, ",")
    // console.log(formatedNumber);
    this.value = formatedNumber

}
</script>
<script>
ClassicEditor
    .create(document.querySelector('#editor'))
    .catch(error => {
        console.error(error);
    });
</script>

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