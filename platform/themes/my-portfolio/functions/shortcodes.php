<?php

use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\RepeaterFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\ColorField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\NumberField;
use Botble\Base\Forms\Fields\RepeaterField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Models\BaseQueryBuilder;
use Botble\Blog\Models\Category;
use Botble\Shortcode\Compilers\Shortcode as ShortcodeCompiler;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Supports\ThemeSupport;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Routing\Events\RouteMatched;
use Illuminate\Support\Arr;

app()->booted(function () {
    ThemeSupport::registerGoogleMapsShortcode();
    ThemeSupport::registerYoutubeShortcode();

    Shortcode::register(
        'homepage-home',
        __('Homepage home section'),
        __('Homepage home section'),
        function (ShortcodeCompiler $shortcode) {
            return Theme::partial('shortcodes.homepage-home', compact('shortcode'));
        }
    );

    Shortcode::setAdminConfig('homepage-home', function (array $attributes) {
        return ShortcodeForm::createFromArray($attributes)
            ->add(
                'img-bg',
                MediaImageField::class,
                MediaImageFieldOption::make()
                    ->label(__('Background image'))
                    ->toArray()
            )
            ->add('title', TextField::class, TextFieldOption::make()
                ->label(__('Title'))
            )
            ->add('subtitle_1', TextField::class, TextFieldOption::make()
                ->label(__('Subtitle'). 1)
            )
            ->add('subtitle_2', TextField::class, TextFieldOption::make()
                ->label(__('Subtitle'). 2)
            );
    });
});
