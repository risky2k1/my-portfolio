<?php

use Botble\Base\Http\Middleware\RequiresJsonRequestMiddleware;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Route;
use Theme\Ripple\Http\Controllers\RippleController;

Theme::registerRoutes(function () {
    Route::group(['controller' => RippleController::class], function () {
        Route::middleware(RequiresJsonRequestMiddleware::class)
            ->group(function () {
                Route::get('ajax/search', 'getSearch')->name('public.ajax.search');
            });

        // Add your custom route here
        // Ex: Route::get('hello', 'getHello');
    });
});

Theme::routes();
