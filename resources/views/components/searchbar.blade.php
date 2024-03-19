<div id="searchbar">
    <form role="search" method="GET" action="{{ route('get.room.search') }}" class="searchform js-form-submit-data">
        <div class="search_field container" style="justify-content: space-between">
            <style>
                .search_field_item {
                    width: 100% !important;
                }
            </style>
            <div class="search_field_item search_field_item_loaitin">
                <label class="search_field_item_label">Loại tin</label>
                <select id="search_room_type" class="form-control js_select2_room_type" name="danhmuc_id">
                    <option value="">Tất cả</option>
                    {{ $categoriesGlobal->first() }}
                    @foreach($categoriesGlobal ?? [] as $item)
                    <option value="{{ $item->id }}" {{ Request::get('danhmuc_id') == $item->id ? "selected" : "" }}>
                        {{ $item->ten }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="search_field_item search_field_item_tinhthanh">
                <label class="search_field_item_label">Quận huyện</label>
                <select name="qhuyen_id" class="form-control" id="qhuyen_id" data-placeholder="Click chọn tỉnh thành">
                    <option value="">Chọn quận huyện</option>

                    @foreach($locationsCity ?? [] as $item)
                    <option value="{{ $item->id }}" {{ $item->id == ($room->qhuyen_id ?? (Request::get('qhuyen_id'))) ? "selected" : ""}}>
                        {{ $item->ten }}
                    </option>
                    @endforeach
                </select>

            </div>
            <div class="search_field_item search_field_item_quanhuyen ">
                <label class="search_field_item_label">Phường xã</label>
                <select name="phuongxa_id" class="form-control " id="phuongxa_id" data-placeholder="Click chọn quận huyện">
                    <option value="">Chọn phường xã</option>
                    @foreach($districts ?? [] as $item)
                    <option value="{{ $item->id }}" {{ $item->id == ($room->phuongxa_id ?? (Request::get('phuongxa_id'))) ? "selected" : ""}}>
                        {{ $item->ten }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="search_field_item search_field_item_mucgia">
                <label class="search_field_item_label">Khoảng giá</label>
                <select class="form-control price js_select2_price" name="price">
                    <option value="">Chọn mức giá</option>
                    @foreach(config('config_search.price') as $key => $item)
                    <option value="{{ $key }}" {{ Request::get('price') == $key ? "selected" : "" }}>{{ $item }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="search_field_item search_field_item_dientich">
                <label class="search_field_item_label">Diện tích</label>
                <select id="search_dientich" name="khuvuc" class="form-control js_select2_acreage">
                    <option value="">Chọn diện tích</option>
                    @foreach(config('config_search.khuvuc') as $key => $item)
                    <option value="{{ $key }}" {{ Request::get('khuvuc') == $key ? "selected" : "" }}>{{ $item }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="search_field_item search_field_item_submit">
                <label class="search_field_item_label mb-item-label">&nbsp;</label>
                <div>
                    <button type="submit" class="btn btn-default btn_search_box form-control"> Tìm kiếm </button>
                </div>
            </div>
        </div>
    </form>
</div>

<script>
    var URL_LOAD_DISTRICT = '{{ route("get_user.load.district") }}'
    var URL_LOAD_WARD = '{{ route("get_user.load.wards") }}'
</script>
@push('script')
<script src="/js/user_room.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    $(document).ready(function() {
        console.log("document loaded");
        $.ajax({
                url: URL_LOAD_DISTRICT,
                data: {
                    qhuyen_id: qhuyen_id
                },
            })
            .done(function(data) {
                // if (data) {
                //     let options = `<option value="0"> Chọn phường xã </option>`;
                //     data.map((item, index) => {
                //         options += `<option value="${item.id}"> ${item.ten}</option>`
                //     })
                //     $("#phuongxa_id").html(options);
                // }
                // console.log('---------- data: ', data);
                console.log('---------- data: ', data);
            })
            .fail(function() {
                let options = `<option value="0"> Chọn phường xã </option>`;
                $("#phuongxa_id").html(options);
            });

    });

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
                })
                .fail(function() {
                    let options = `<option value="0"> Chọn phường xã </option>`;
                    $("#phuongxa_id").html(options);
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