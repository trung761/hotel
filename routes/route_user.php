<?php

use Illuminate\Support\Facades\Route;



Route::group(['namespace' => 'User', 'prefix' => 'user', 'middleware' => 'checkLoginUser'], function () {
    Route::get('cap-nhat.html', 'UserProfileController@index')->name('get_user.profile.index');
    Route::post('cap-nhat.html', 'UserProfileController@update');

    Route::get('cap-nhat-so-dien-thoai.html', 'UserProfileController@updatePhone')->name('get_user.profile.update_phone');
    Route::post('cap-nhat-so-dien-thoai.html', 'UserProfileController@processUpdatePhone');


    // không chuyền data gì hết nên k gửi gì hết, vì function 
    Route::get('send-code', 'UserProfileController@sendCode')->name('post_user.send_code');
    Route::post('cap-nhat-so-dien-thoai.html', 'UserProfileController@updatePhone')->name('post_user.profile.update_phone');


    Route::group(['prefix' => 'room'], function () {
        Route::get('', 'UserRoomController@index')->name('get_user.room.index');
        Route::get('create', 'UserRoomController@create')->name('get_user.room.create');
        Route::post('create', 'UserRoomController@store');

        Route::get('pay/{id}', 'UserRoomController@payRoom')->name('get_user.room.pay');
        Route::post('pay/{id}', 'UserRoomController@savePayRoom');
        Route::get('hide/{id}', 'UserRoomController@hideRoom')->name('get_user.room.hide');
        Route::get('active/{id}', 'UserRoomController@activeRoom')->name('get_user.room.active');
        Route::get('update/{id}', 'UserRoomController@edit')->name('get_user.room.update');
        Route::get('delete-img/{id}', 'UserRoomController@deleteImage')->name('get_user.room.delete_image');
        Route::post('update/{id}', 'UserRoomController@update');
    });

    Route::get('lich-su-nap-tien.html', 'UserRechargeController@rechargeHistory')->name('get_user.recharge.history');
    Route::get('lich-su-thanh-toan.html', 'UserRechargeController@paymentHistory')->name('get_user.payment.history');
    Route::get('{slug}-{id}', 'UserRechargeController@switchRecharge')->name('get_user.recharge.switch')
        ->where(['slug' => '[a-z-0-9-]+', 'id' => '[0-9]+',]);

    Route::group(['prefix' => 'nap-tien'], function () {
        Route::get('', 'UserRechargeController@index')->name('get_user.recharge.index');
        Route::get('atm-internet-banking', 'UserRechargeController@atmInternet')->name('get_user.recharge.atm');
        Route::post('atm-internet-banking', 'UserRechargeController@processAtmInternet');
        Route::get('post-back-atm-internet-banking', 'UserRechargeController@postbackAtm');
        Route::get('{slug}-{id}', 'UserRechargeController@switchRecharge')->name('get_user.recharge.switch')
            ->where(['slug' => '[a-z-0-9-]+', 'id' => '[0-9]+',]);
    });
});

Route::group(['namespace' => 'User', 'prefix' => 'user'], function () {
    Route::get('thay-doi-mat-khau.html', 'UserProfileController@forgotPassword')->name('get.forget-password');
    Route::post('thay-doi-mat-khau.html', 'UserProfileController@forgotPasswordReset')->name('get.forgot-password');
});
