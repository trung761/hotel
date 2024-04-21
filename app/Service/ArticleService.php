<?php


namespace App\Service;


use App\Models\BaiViet;

class ArticleService
{
    protected $column = ['id', 'anhdaidien', 'ten', 'mota', 'slug'];

    public static function getListsArticles($request, $params = [])
    {
        $self = new self();
        $rooms = BaiViet::whereRaw(1);

        $rooms = $rooms->select($self->column)->orderByDesc('id')->paginate(10);

        return $rooms;
    }
}
