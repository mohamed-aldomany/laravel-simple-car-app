<?php

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::group(['middleware' => 'auth'], function () {
    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/home', 'WebController@Categories');
    Route::get('/category/{cid}', 'WebController@CategoryInc');
    Route::post('/cycle/add_cart', 'WebController@AddCart');
    Route::get('/cart', 'WebController@MyCart');
    Route::post('/cycle/remove_cart', 'WebController@RemoveCart');
    Route::get('/profile', 'WebController@MyProfile');
    Route::post('/update_profile', 'WebController@UpdateProfile');
});
