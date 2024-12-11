<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these events can be overridden by package config.
    |
    */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function ($theme): void {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme): void {
            // Partial composer.
            // $theme->partialComposer('header', function($view) {
            //     $view->with('auth', \Auth::user());
            // });

            // You may use this event to set up your assets.
            $theme->asset()->usePath()->add('font-awesome', 'css/font-awesome.min.css');
            $theme->asset()->usePath()->add('bootstrap', 'css/bootstrap.css');
            $theme->asset()->usePath()->add('owl.carousel', 'css/owl.carousel.min.css');
            $theme->asset()->usePath()->add('owl.theme.default', 'css/owl.theme.default.min.css');
            $theme->asset()->usePath()->add('magnific-popup', 'css/magnific-popup.css');
            $theme->asset()->usePath()->add('style', 'css/style.css');

            $theme->asset()->container('footer')->usePath()->add('jquery.min.js', 'js/jquery.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap.min', 'js/bootstrap.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.stellar', 'js/jquery.stellar.js');
            $theme->asset()->container('footer')->usePath()->add('animated.headline', 'js/animated.headline.js');
            $theme->asset()->container('footer')->usePath()->add('owl.carousel.min', 'js/owl.carousel.min.js');
            $theme->asset()->container('footer')->usePath()->add('scrollIt.min', 'js/scrollIt.min.js');
            $theme->asset()->container('footer')->usePath()->add('isotope.pkgd.min', 'js/isotope.pkgd.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.magnific-popup.min', 'js/jquery.magnific-popup.min.js');
            $theme->asset()->container('footer')->usePath()->add('particles.min', 'js/particles.min.js');
            $theme->asset()->container('footer')->usePath()->add('main', 'js/main.js');

            if (function_exists('shortcode')) {
                $theme->composer(['page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [
            'default' => function ($theme): void {
                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            },
        ],
    ],
];
