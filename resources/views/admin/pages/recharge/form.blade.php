<form class="form" method="POST">
    @csrf
    <div class="mb-3">
        <label class="form-label">Mã khách hàng</label>
        <input type="number" class="form-control" name="nguoidung_id"
            value="{{ old('nguoidung_id', $rechargeHistory->nguoidung_id ?? '') }}" aria-describedby="emailHelp"
            placeholder="Mã khách hàng">
    </div>
    <div class="mb-3">
        <label class="form-label">Loại hình thanh toán</label>
        <select class="form-select" name="loai" aria-label="Default select example">
            @foreach($rechargeConfig ?? [] as $item)
            <option value="{{ $item['ma'] }}">{{ $item['ten'] }}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Số tiền</label>
        <input type="number" class="form-control" name="tien" value="{{ old('money', $rechargeHistory->tien ?? 0) }}"
            aria-describedby="emailHelp" placeholder="Số tiền">
    </div>
    <div class="mb-3">
        <label class="form-label">Khuyến mãi</label>
        <input type="number" class="form-control" name="giamgia"
            value="{{ old('discount', $rechargeHistory->giamgia ?? 0) }}" aria-describedby="emailHelp"
            placeholder="Khuyến mãi">
    </div>
    <div class="mb-3">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="trangthai"
                {{ ($rechargeHistory->trangthai ?? 1) == 1 ? "checked" : "" }} id="flexRadioDefault1" value="1">
            <label class="form-check-label" for="flexRadioDefault1">
                Khởi tạo
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="trangthai"
                {{ ($rechargeHistory->trangthai ?? 1) == 2 ? "checked" : "" }} id="flexRadioDefault2" value="2">
            <label class="form-check-label" for="flexRadioDefault2">
                Duyệt
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="status"
                {{ ($rechargeHistory->status ?? 1) == -1 ? "checked" : "" }} id="flexRadioDefault2" value="-1">
            <label class="form-check-label" for="flexRadioDefault2">
                Huỷ bỏ
            </label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Lưu dữ liệu</button>
</form>