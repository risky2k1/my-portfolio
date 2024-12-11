<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Page\Models\Page;
use Botble\Theme\Database\Traits\HasThemeOptionSeeder;

class ThemeOptionSeeder extends BaseSeeder
{
    use HasThemeOptionSeeder;

    public function run(): void
    {
        $this->uploadFiles('general');

        $this->createThemeOptions([
            'site_title' => 'Just another Botble CMS site',
            'seo_description' => 'With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',
            'copyright' => '©%Y Your Company. All rights reserved.',
            'favicon' => $this->filePath('general/favicon.png'),
            'logo' => $this->filePath('general/logo.png'),
            'website' => 'https://botble.com',
            'contact_email' => 'support@company.com',
            'site_description' => 'With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',
            'phone' => '+(123) 345-6789',
            'address' => '214 West Arnold St. New York, NY 10002',
            'cookie_consent_message' => 'Your experience on this site will be improved by allowing cookies ',
            'cookie_consent_learn_more_url' => '/cookie-policy',
            'cookie_consent_learn_more_text' => 'Cookie Policy',
            'homepage_id' => Page::query()->value('id'),
            'blog_page_id' => Page::query()->skip(1)->value('id'),
            'primary_color' => '#AF0F26',
            'primary_font' => 'Roboto',
            'social_links' => [
                [
                    [
                        'key' => 'name',
                        'value' => 'Facebook',
                    ],
                    [
                        'key' => 'icon',
                        'value' => 'ti ti-brand-facebook',
                    ],
                    [
                        'key' => 'url',
                        'value' => 'https://facebook.com',
                    ],
                ],
                [
                    [
                        'key' => 'name',
                        'value' => 'X (Twitter)',
                    ],
                    [
                        'key' => 'icon',
                        'value' => 'ti ti-brand-x',
                    ],
                    [
                        'key' => 'url',
                        'value' => 'https://x.com',
                    ],
                ],
                [
                    [
                        'key' => 'name',
                        'value' => 'YouTube',
                    ],
                    [
                        'key' => 'icon',
                        'value' => 'ti ti-brand-youtube',
                    ],
                    [
                        'key' => 'url',
                        'value' => 'https://youtube.com',
                    ],
                ],
            ],
            'lazy_load_images' => 1,
            'lazy_load_placeholder_image' => $this->filePath('general/preloader.gif'),
        ]);
    }
}
