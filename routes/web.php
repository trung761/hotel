<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['namespace' => 'Auth'], function () {
    Route::get('dang-ky.html', 'RegisterController@index')->name('get.register');
    Route::post('dang-ky.html', 'RegisterController@register')->name('get.register');

    Route::get('dang-nhap.html', 'LoginController@index')->name('get.login');
    Route::post('dang-nhap.html', 'LoginController@login')->name('get.login');

    Route::get('dang-xuat.html', 'LoginController@logout')->name('get.logout');
});

Route::group(['namespace' => 'Auth'], function () {
    Route::get('admin/login', 'AuthAdminController@login')->name('get_admin.login');
    Route::post('admin/login', 'AuthAdminController@postLogin')->name('post_admin.login');
    Route::get('admin/logout', 'AuthAdminController@logout')->name('get_admin.logout');
});

Route::group(['namespace' => 'Frontend'], function () {
    Route::get('', 'HomeController@index')->name('get.home');
    Route::get('bang-gia', 'HomeController@getServicePrice')->name('get.service.price');
    Route::get('tim-kiem', 'SearchRoomController@index')->name('get.room.search');
    Route::get('chuyen-muc-{slug}-{id}', 'CategoryController@index')
        ->name('get.category.item')
        ->where(['slug' => '[a-z-0-9-]+', 'id' => '[0-9]+',]);

    Route::get('room/{slug}-{id}', 'RoomDetailController@detail')
        ->name('get.room.detail')
        ->where(['slug' => '[a-z-0-9-]+', 'id' => '[0-9]+',]);
    Route::get('quan-huyen/{slug}-{id}', 'LocationController@getRoomByDistrict')
        ->name('get.room.by_district')
        ->where(['slug' => '[a-z-0-9-]+', 'id' => '[0-9]+',]);

    Route::get('phuong-xa/{slug}-{id}', 'LocationController@getRoomByWards')
        ->name('get.room.by_wards')
        ->where(['slug' => '[a-z-0-9-]+', 'id' => '[0-9]+',]);


    Route::get('bai-viet', 'BlogController@index')
        ->name('get.blog.index');

    Route::get('bai-viet/{slug}-{id}', 'BlogController@getArticleDetail')
        ->name('get.room.blog_detail')
        ->where(['slug' => '[a-z-0-9-]+', 'id' => '[0-9]+',]);
});
Route::get('district', 'User\UserRoomController@loadDistrict')->name('get_user.load.district');
Route::get('wards', 'User\UserRoomController@loadWards')->name('get_user.load.wards');
include 'route_user.php';
include 'route_admin.php';
