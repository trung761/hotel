<div class="card b-list-cate">
    <div class="card-header">
        <div class="cpn-heading">Danh mục</div>
    </div>
    <div class="card-body list-cate">
        <ul>
            @foreach($categoriesGlobalSidebar ?? [] as $item)
            <li>
                <a href="{{ route('get.category.item',['slug' => $item->slug,'id' => $item->id]) }}" title="{{ $item->ten }}">{{ $item->ten }}
                </a>

            </li>
            @endforeach
        </ul>
    </div>
</div>