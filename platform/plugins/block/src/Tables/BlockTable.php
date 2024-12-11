<?php

namespace Botble\Block\Tables;

use Botble\Base\Facades\Html;
use Botble\Block\Models\Block;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\NameBulkChange;
use Botble\Table\BulkChanges\StatusBulkChange;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\FormattedColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\HeaderActions\CreateHeaderAction;
use Illuminate\Database\Eloquent\Builder;

class BlockTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(Block::class)
            ->addHeaderAction(CreateHeaderAction::make()->route('block.create'))
            ->addColumns([
                IdColumn::make(),
                NameColumn::make()->route('block.edit'),
                FormattedColumn::make('alias')
                    ->title(trans('core/base::tables.shortcode'))
                    ->alignStart()
                    ->getValueUsing(function (FormattedColumn $column) {
                        $value = $column->getItem()->alias;

                        if (! function_exists('shortcode')) {
                            return $value;
                        }

                        return shortcode()->generateShortcode('static-block', ['alias' => $value]);
                    })
                    ->renderUsing(fn (FormattedColumn $column) => Html::tag('code', $column->getValue()))
                    ->copyable(),
                CreatedAtColumn::make(),
                StatusColumn::make(),
            ])
            ->addActions([
                EditAction::make()->route('block.edit'),
                DeleteAction::make()->route('block.destroy'),
            ])
            ->addBulkActions([
                DeleteBulkAction::make()->permission('block.destroy'),
            ])
            ->addBulkChanges([
                NameBulkChange::make(),
                StatusBulkChange::make(),
                CreatedAtBulkChange::make(),
            ])
            ->queryUsing(function (Builder $query) {
                $query
                    ->select([
                        'id',
                        'alias',
                        'name',
                        'created_at',
                        'status',
                    ]);
            });
    }
}
