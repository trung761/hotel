<div class="post-item bd-red">
    <div class="post-item__image">
        <a href="{{ route('get.room.detail',['id' => $item->id,'slug' => $item->slug]) }}" class="a-img">
            <img src="{{ pare_url_file($item->anhdaidien) }}" alt="{{ $item->ten }}">
            {{-- <span class="images-number">5 ảnh</span>--}}

        </a>
    </div>
    <div class="post-item__info">
        <div class="post-title">
            @if ($item->dichvu_hot > 0)
            @for($i = 1 ; $i <= $item->dichvu_hot ; $i ++)
                <span class="star"></span>
                @endfor
                @endif
                <a href="{{ route('get.room.detail',['id' => $item->id,'slug' => $item->slug]) }}"
                    title="{{ $item->ten }}">{{ $item->ten }}</a>
        </div>
        <div class="meta-salry-time">
            <div class="post-price">{{ number_format($item->gia,0,',','.') }} đ
            </div>

            <div class="post-time fz-13">Cập nhật: {{ $item->updated_at }}</div>
        </div>
        <div class="meta-acreage-location">
            <span class="post-acreage fz-13">{{ $item->khuvuc }}m²</span>
            <span class="post-location">
                <a href="#" title="{{ $item->chitietdiachi }}">{{ $item->chitietdiachi }}</a>
            </span>
        </div>
        {{-- <span class="post-hot"></span>--}}
        <div class="post-summary">
            {!! $item->mota !!}
        </div>
    </div>
</div>