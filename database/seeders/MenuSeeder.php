<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Database\Traits\HasBlogSeeder;
use Botble\Menu\Database\Traits\HasMenuSeeder;
use Botble\Page\Database\Traits\HasPageSeeder;
use Botble\Page\Models\Page;

class MenuSeeder extends BaseSeeder
{
    use HasMenuSeeder;
    use HasPageSeeder;
    use HasBlogSeeder;

    public function run(): void
    {
        $data = [
            [
                'name' => 'Main menu',
                'slug' => 'main-menu',
                'location' => 'main-menu',
                'items' => [
                    [
                        'title' => 'Home',
                        'url' => '/',
                    ],
                    [
                        'title' => 'Purchase',
                        'url' => 'https://botble.com/go/download-cms',
                        'target' => '_blank',
                    ],
                    [
                        'title' => 'Blog',
                        'reference_id' => $this->getPageId('Blog'),
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Galleries',
                        'reference_id' => $this->getPageId('Galleries'),
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Contact',
                        'reference_id' => $this->getPageId('Contact'),
                        'reference_type' => Page::class,
                    ],
                ],
            ],

            [
                'name' => 'Social',
                'slug' => 'social',
                'items' => [
                    [
                        'title' => 'Facebook',
                        'url' => 'https://facebook.com',
                        'icon_font' => 'ti ti-brand-facebook',
                        'target' => '_blank',
                    ],
                    [
                        'title' => 'Twitter',
                        'url' => 'https://twitter.com',
                        'icon_font' => 'ti ti-brand-x',
                        'target' => '_blank',
                    ],
                    [
                        'title' => 'GitHub',
                        'url' => 'https://github.com',
                        'icon_font' => 'ti ti-brand-github',
                        'target' => '_blank',
                    ],

                    [
                        'title' => 'Linkedin',
                        'url' => 'https://linkedin.com',
                        'icon_font' => 'ti ti-brand-linkedin',
                        'target' => '_blank',
                    ],
                ],
            ],
        ];

        $this->createMenus($data);
    }
}
