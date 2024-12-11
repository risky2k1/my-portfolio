<?php

use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\FormAbstract;
use Botble\Base\Rules\MediaImageRule;
use Botble\Blog\Models\Post;
use Botble\Media\Facades\RvMedia;
use Botble\Member\Forms\PostForm as MemberPostForm;
use Botble\Page\Models\Page;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Supports\ThemeSupport;
use Botble\Theme\Typography\TypographyItem;
use Botble\Widget\Events\RenderingWidgetSettings;

app()->booted(function () {
    RvMedia::addSize('featured', 565, 375)
        ->addSize('medium', 540, 360);

    Theme::typography()
        ->registerFontFamilies([
            new TypographyItem('primary', __('Primary'), theme_option('primary_font', 'Roboto')),
        ])
        ->registerFontSizes([
            new TypographyItem('h1', __('Heading 1'), 28),
            new TypographyItem('h2', __('Heading 2'), 24),
            new TypographyItem('h3', __('Heading 3'), 22),
            new TypographyItem('h4', __('Heading 4'), 20),
            new TypographyItem('h5', __('Heading 5'), 18),
            new TypographyItem('h6', __('Heading 6'), 16),
            new TypographyItem('body', __('Body'), 14),
        ]);

    ThemeSupport::registerSocialLinks();
    ThemeSupport::registerToastNotification();
    ThemeSupport::registerPreloader();
    ThemeSupport::registerSiteCopyright();
    ThemeSupport::registerDateFormatOption();
    ThemeSupport::registerLazyLoadImages();

    register_page_template([
        'no-sidebar' => __('No sidebar'),
    ]);

    app('events')->listen(RenderingWidgetSettings::class, function () {
        register_sidebar([
            'id' => 'top_sidebar',
            'name' => __('Top sidebar'),
            'description' => __('Area for widgets on the top sidebar'),
        ]);

        register_sidebar([
            'id' => 'footer_sidebar',
            'name' => __('Footer sidebar'),
            'description' => __('Area for footer widgets'),
        ]);
    });

    FormAbstract::extend(function (FormAbstract $form): void {
        $model = $form->getModel();

        if (! $model instanceof Post && ! $model instanceof Page) {
            return;
        }

        $form
            ->addAfter(
                'image',
                'banner_image',
                MediaImageField::class,
                MediaImageFieldOption::make()->label(__('Banner image (1920x170px)'))->metadata()->toArray()
            );
    }, 124);

    FormAbstract::afterSaving(function (FormAbstract $form): void {
        if (! $form instanceof MemberPostForm) {
            return;
        }

        $request = $form->getRequest();

        $request->validate([
            'banner_image_input' => ['nullable', new MediaImageRule()],
        ]);

        /**
         * @var Post $model
         */
        $model = $form->getModel();

        $model->saveMetaDataFromFormRequest('banner_image', $request);
    }, 175);
});
