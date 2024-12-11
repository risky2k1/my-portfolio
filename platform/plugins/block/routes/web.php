<?php

use Botble\Base\Facades\AdminHelper;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Botble\Block\Http\Controllers'], function () {
    AdminHelper::registerRoutes(function () {
        Route::group(['prefix' => 'blocks', 'as' => 'block.'], function () {
            Route::resource('', 'BlockController')->parameters(['' => 'block']);
        });
    });
});
