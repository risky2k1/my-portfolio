<?php

namespace Botble\Translation\Exporters;

use Botble\Base\Supports\Language;
use Botble\DataSynchronize\Exporter\ExportColumn;
use Botble\DataSynchronize\Exporter\Exporter;
use Botble\Translation\Services\GetGroupedTranslationsService;
use Illuminate\Support\Collection;
use Illuminate\Support\Str;

class OtherTranslationExporter extends Exporter
{
    public function getLabel(): string
    {
        return trans('plugins/translation::translation.panel.admin-translations.title');
    }

    public function columns(): array
    {
        $columns = [
            ExportColumn::make('key')->disabled(),
            ExportColumn::make('English')->label('English')->disabled(),
        ];

        foreach (Language::getAvailableLocales() as $locale) {
            if ($locale['locale'] !== 'en') {
                $columns[] = ExportColumn::make($locale['name'])->label($locale['name'])->disabled();
            }
        }

        return $columns;
    }

    public function collection(): Collection
    {
        $translations = (new GetGroupedTranslationsService())
            ->handle()
            ->transform(fn ($translation) => [
                'key' => sprintf('%s::%s', $translation['group'], $translation['key']),
                'English' => $translation['value'],
            ]);

        foreach (Language::getAvailableLocales() as $locale) {
            if ($locale['locale'] === 'en') {
                continue;
            }

            $currentTranslations = [];

            $translations->transform(function ($translation) use ($locale, &$currentTranslations) {
                [$group, $key] = explode('::', $translation['key']);

                return [
                    ...$translation,
                    $locale['name'] => trans(
                        Str::of($group)
                            ->replaceLast(DIRECTORY_SEPARATOR, '::')
                            ->append(".$key")
                            ->toString(),
                        [],
                        $locale['locale']
                    ),
                ];
            });
        }

        return $translations;
    }
}
