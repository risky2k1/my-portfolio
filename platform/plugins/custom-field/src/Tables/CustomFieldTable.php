<?php

namespace Botble\CustomField\Tables;

use Botble\CustomField\Models\FieldGroup;
use Botble\CustomField\Tables\Actions\ExportAction;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\NameBulkChange;
use Botble\Table\BulkChanges\StatusBulkChange;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\HeaderActions\CreateHeaderAction;
use Botble\Table\HeaderActions\HeaderAction;
use Illuminate\Database\Eloquent\Builder;

class CustomFieldTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(FieldGroup::class)
            ->addHeaderActions([
                CreateHeaderAction::make()->route('custom-fields.create'),
                HeaderAction::make('import-field-group')
                    ->label(trans('plugins/custom-field::base.import'))
                    ->icon('ti ti-cloud-upload')
                    ->url('#')
                    ->attributes(['class' => 'custom-import-button']),
            ])
            ->setView('plugins/custom-field::list')
            ->addColumns([
                IdColumn::make(),
                NameColumn::make('title')->route('custom-fields.edit'),
                CreatedAtColumn::make(),
                StatusColumn::make(),
            ])
            ->addActions([
                ExportAction::make()
                    ->route('custom-fields.export')
                    ->permission('custom-fields.index'),
                EditAction::make()->route('custom-fields.edit'),
                DeleteAction::make()->route('custom-fields.destroy'),
            ])
            ->addBulkActions([
                DeleteBulkAction::make()->permission('custom-fields.destroy'),
            ])
            ->addBulkChanges([
                NameBulkChange::make()->name('title'),
                StatusBulkChange::make(),
                CreatedAtBulkChange::make(),
            ])
            ->queryUsing(function (Builder $query) {
                return $query
                    ->select([
                        'id',
                        'title',
                        'status',
                        'order',
                        'created_at',
                    ]);
            });
    }
}
