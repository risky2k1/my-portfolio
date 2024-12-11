<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Gallery\Database\Traits\HasGallerySeeder;

class GallerySeeder extends BaseSeeder
{
    use HasGallerySeeder;

    public function run(): void
    {
        $galleries = [
            'Sunset',
            'Ocean Views',
            'Adventure Time',
            'City Lights',
            'Dreamscape',
            'Enchanted Forest',
            'Golden Hour',
            'Serenity',
            'Eternal Beauty',
            'Moonlight Magic',
            'Starry Night',
            'Hidden Gems',
            'Tranquil Waters',
            'Urban Escape',
            'Twilight Zone',
        ];

        $faker = $this->fake();

        $this->createGalleries(
            collect($galleries)->map(function (string $item, int $index) {
                return ['name' => $item, 'is_featured' => $index < 6, 'image' => $this->filePath('news/' . ($index + 6) . '.jpg')];
            })->toArray(),
            array_map(function ($index) use ($faker) {
                return ['img' => $this->filePath('news/' . $index . '.jpg'), 'description' => $faker->text(150)];
            }, range(1, 20))
        );
    }
}
