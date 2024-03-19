<section class="breadcrumb">
    <ol>
        @foreach ($data as $key => $item)
        <li>
            @if (($key+1) == count($data))
                <span>{{ $item }}</span>
            @else
                <a href="">
                    <span>{{ $item }}</span>
                </a>
            @endif
        </li>
        @endforeach
    </ol>
</section>