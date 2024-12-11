<?php

namespace Botble\Member\Tables;

use Botble\Member\Models\Member;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\EmailBulkChange;
use Botble\Table\BulkChanges\NameBulkChange;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\EmailColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\ImageColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\HeaderActions\CreateHeaderAction;
use Illuminate\Database\Eloquent\Builder;

class MemberTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(Member::class)
            ->addHeaderAction(CreateHeaderAction::make()->route('member.create'))
            ->addColumns([
                IdColumn::make(),
                ImageColumn::make('avatar_thumb_url')
                    ->title(trans('plugins/member::member.avatar'))
                    ->fullMediaSize()
                    ->relative(),
                NameColumn::make()->route('member.edit')->orderable(false),
                EmailColumn::make()->linkable(),
                CreatedAtColumn::make(),
            ])
            ->addActions([
                EditAction::make()->route('member.edit'),
                DeleteAction::make()->route('member.destroy'),
            ])
            ->addBulkActions([
                DeleteBulkAction::make()->permission('member.destroy'),
            ])
            ->addBulkChanges([
                NameBulkChange::make()
                    ->name('first_name')
                    ->title(trans('plugins/member::member.first_name')),
                NameBulkChange::make()
                    ->name('last_name')
                    ->title(trans('plugins/member::member.last_name')),
                EmailBulkChange::make(),
                CreatedAtBulkChange::make(),
            ])
            ->queryUsing(function ($query) {
                return $query->select([
                    'id',
                    'avatar_id',
                    'first_name',
                    'last_name',
                    'email',
                    'created_at',
                ]);
            })
            ->onAjax(function (TableAbstract $table) {
                return $table->toJson(
                    $this->table
                        ->eloquent($this->query())
                        ->filter(function (Builder $query) {
                            $keyword = $this->request->input('search.value');

                            if (! $keyword) {
                                return $query;
                            }

                            return $query->where(function (Builder $query) use ($keyword) {
                                $likeKeyword = '%' . $keyword . '%';

                                $query
                                    ->where('id', $keyword)
                                    ->orWhere('first_name', 'LIKE', $likeKeyword)
                                    ->orWhere('last_name', 'LIKE', $likeKeyword)
                                    ->orWhereRaw('concat(first_name, " ", last_name) LIKE ?', $likeKeyword)
                                    ->orWhere('email', 'LIKE', $likeKeyword)
                                    ->orWhereDate('created_at', $keyword);
                            });
                        })
                );
            });
    }
}
