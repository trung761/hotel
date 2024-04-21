<section class="popular-posts container">
    <div class="section-title ">Tin nổi bật</div>
    <div class="posts-listing style-gird">
        @foreach($rooms ?? [] as $item)
        <div class="col-item">
            <div class="col-item__image">
                <a href="{{ route('get.room.detail',['id' => $item->id,'slug' => $item->slug]) }}" class="a-img">
                    <img src="{{ pare_url_file($item->anhdaidien) }}" alt="{{ $item->ten }}">
                </a>
            </div>
            <div class="col-item__info">
                <div class="post-title">
                    @if ($item->dichvu_hot > 0)
                    @for($i = 1 ; $i <= $item->dichvu_hot ; $i ++)
                        <span class="star"></span>
                        @endfor
                        @endif
                        <a href="{{ route('get.room.detail',['id' => $item->id,'slug' => $item->slug]) }}">{{ $item->ten }}</a>
                </div>
                <div class="post-price">{{ number_format($item->gia,0,',','.') }} đ</div>
                <div class="post-acreage fz-13">{{ $item->khuvuc }}m²</div>
                <div class="post-location fz-13">
                    <a href="{{ route('get.room.detail',['id' => $item->id,'slug' => $item->slug]) }}" title="{{ $item->chitietdiachi }}">{{ $item->chitietdiachi }}</a>
                </div>
                <time class="post-time fz-13">Cập nhật: {{ $item->updated_at }}</time>
                <span class="post-hot"></span>
            </div>
        </div>
        @endforeach
    </div>
</section>