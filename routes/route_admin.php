<?php

use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Admin', 'prefix' => 'admin', 'middleware' => 'checkLoginAdmin'], function () {
    Route::get('', 'AdminDashboardController@index')->name('get_admin.home.index');

    Route::group(['prefix' => 'location'], function () {
        Route::get('', 'AdminLocationController@index')->name('get_admin.location.index');
        Route::get('create', 'AdminLocationController@create')->name('get_admin.location.create');
        Route::post('create', 'AdminLocationController@store');

        Route::get('update/{id}', 'AdminLocationController@edit')->name('get_admin.location.update');
        Route::post('update/{id}', 'AdminLocationController@update');

        Route::get('delete/{id}', 'AdminLocationController@delete')->name('get_admin.location.delete');
    });



    Route::group(['prefix' => 'category'], function () {
        Route::get('', 'AdminCategoryController@index')->name('get_admin.category.index');
        Route::get('create', 'AdminCategoryController@create')->name('get_admin.category.create');
        Route::post('create', 'AdminCategoryController@store');

        Route::get('update/{id}', 'AdminCategoryController@edit')->name('get_admin.category.update');
        Route::post('update/{id}', 'AdminCategoryController@update');

        Route::get('delete/{id}', 'AdminCategoryController@delete')->name('get_admin.category.delete');
    });

    Route::group(['prefix' => 'article'], function () {
        Route::get('', 'AdminArticleController@index')->name('get_admin.article.index');
        Route::get('create', 'AdminArticleController@create')->name('get_admin.article.create');
        Route::post('create', 'AdminArticleController@store');

        Route::get('update/{id}', 'AdminArticleController@edit')->name('get_admin.article.update');
        Route::post('update/{id}', 'AdminArticleController@update');

        Route::get('delete/{id}', 'AdminArticleController@delete')->name('get_admin.article.delete');
    });

    Route::group(['prefix' => 'recharge'], function () {
        Route::get('', 'AdminRechargeController@index')->name('get_admin.recharge.index');
        Route::get('pay', 'AdminRechargeController@indexPay')->name('get_admin.recharge_pay.index');

        Route::get('create', 'AdminRechargeController@create')->name('get_admin.recharge.create');
        Route::post('create', 'AdminRechargeController@store');

        Route::get('update/{id}', 'AdminRechargeController@edit')->name('get_admin.recharge.update');
        Route::post('update/{id}', 'AdminRechargeController@update');
    });

    Route::group(['prefix' => 'user'], function () {
        Route::get('', 'AdminUserController@index')->name('get_admin.user.index');
        Route::get('update/{id}', 'AdminUserController@edit')->name('get_admin.user.update');
        Route::post('update/{id}', 'AdminUserController@update');
        Route::get('delete/{id}', 'AdminUserController@delete')->name('get_admin.user.delete');
    });

    Route::group(['prefix' => 'room'], function () {
        Route::get('', 'AdminRoomController@index')->name('get_admin.room.index');
        Route::get('create', 'AdminRoomController@create')->name('get_admin.room.create');
        Route::post('create', 'AdminRoomController@store');

        Route::get('success/{id}', 'AdminRoomController@success')->name('get_admin.room.success');
        Route::get('expires/{id}', 'AdminRoomController@expires')->name('get_admin.room.expires');
        Route::get('hide/{id}', 'AdminRoomController@hide')->name('get_admin.room.hide');
        Route::get('cancel/{id}', 'AdminRoomController@cancel')->name('get_admin.room.cancel');
        Route::post('cancel/{id}', 'AdminRoomController@processCancelRoom');

        Route::get('update/{id}', 'AdminRoomController@edit')->name('get_admin.room.update');
        Route::post('update/{id}', 'AdminRoomController@update');

        Route::get('delete/{id}', 'AdminRoomController@delete')->name('get_admin.room.delete');
    });
});
