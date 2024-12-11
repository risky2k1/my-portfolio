<?php

use Botble\Theme\Events\RenderingThemeOptionSettings;

app('events')->listen(RenderingThemeOptionSettings::class, function () {
    theme_option()
        ->setField([
            'id' => 'primary_color',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'customColor',
            'label' => __('Primary color'),
            'attributes' => [
                'name' => 'primary_color',
                'value' => '#AF0F26',
            ],
        ])
        ->setField([
            'id' => 'default_breadcrumb_banner_image',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'mediaImage',
            'label' => __('Default banner image (1920x170px)'),
            'attributes' => [
                'name' => 'default_breadcrumb_banner_image',
                'value' => null,
            ],
        ])
        ->setField([
            'id' => 'site_description',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'textarea',
            'label' => __('Site description'),
            'attributes' => [
                'name' => 'site_description',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id' => 'address',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'text',
            'label' => __('Address'),
            'attributes' => [
                'name' => 'address',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id' => 'website',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'url',
            'label' => __('Website'),
            'attributes' => [
                'name' => 'website',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setField([
            'id' => 'contact_email',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'email',
            'label' => __('Email'),
            'attributes' => [
                'name' => 'contact_email',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'data-counter' => 120,
                ],
            ],
        ])
        ->setField([
            'id' => 'facebook_comment_enabled_in_gallery',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type' => 'customSelect',
            'label' => __('Enable Facebook comment in the gallery detail?'),
            'attributes' => [
                'name' => 'facebook_comment_enabled_in_gallery',
                'list' => [
                    'no' => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value' => 'no',
            ],
        ]);
});
