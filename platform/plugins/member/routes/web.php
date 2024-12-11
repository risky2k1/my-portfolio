<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Member\Models\Member;
use Botble\Slug\Facades\SlugHelper;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Route;

Route::group([
    'namespace' => 'Botble\Member\Http\Controllers',
], function () {
    AdminHelper::registerRoutes(function () {
        Route::group(['prefix' => 'members', 'as' => 'member.'], function () {
            Route::resource('', 'MemberController')->parameters(['' => 'member']);
        });

        Route::group(['prefix' => 'settings', 'as' => 'member.'], function () {
            Route::get('members', [
                'as' => 'settings',
                'uses' => 'Settings\MemberSettingController@edit',
            ]);

            Route::put('members', [
                'as' => 'settings.update',
                'uses' => 'Settings\MemberSettingController@update',
                'permission' => 'member.settings',
            ]);
        });
    });

    if (defined('THEME_MODULE_SCREEN_NAME')) {
        Theme::registerRoutes(function () {
            Route::get(SlugHelper::getPrefix(Member::class, 'author') . '/{slug}')
                ->uses('PublicController@getAuthor')
                ->name('author.show');
        });
    }
});
