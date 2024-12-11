<?php

namespace Botble\Member\Forms;

use Botble\Base\Forms\FieldOptions\TagFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\Fields\TagField;
use Botble\Blog\Forms\PostForm as BasePostForm;
use Botble\Blog\Models\Post;
use Botble\Blog\Models\Tag;
use Botble\Member\Forms\Fields\CustomEditorField;
use Botble\Member\Http\Requests\PostRequest;

class PostForm extends BasePostForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->model(Post::class)
            ->setFormOption('template', 'plugins/member::forms.base')
            ->hasFiles()
            ->setValidatorClass(PostRequest::class)
            ->setBreakFieldPoint('categories[]')
            ->remove('status')
            ->remove('is_featured')
            ->remove('content')
            ->addAfter(
                'description',
                'content',
                CustomEditorField::class,
                TextareaFieldOption::make()->label(trans('core/base::forms.content'))->rows(4)->toArray()
            )
            ->modify(
                'tag',
                TagField::class,
                TagFieldOption::make()
                    ->label(trans('plugins/blog::posts.form.tags'))
                    ->when($this->getModel()->id, function (TagFieldOption $fieldOption) {
                        return $fieldOption
                            ->value(
                                $this->getModel()
                                    ->tags()
                                    ->select('name')
                                    ->get()
                                    ->map(fn (Tag $item) => $item->name)
                                    ->implode(',')
                            );
                    })
                    ->placeholder(trans('plugins/blog::base.write_some_tags'))
                    ->ajaxUrl(route('public.member.tags.all'))
                    ->toArray(),
                true
            );
    }
}
