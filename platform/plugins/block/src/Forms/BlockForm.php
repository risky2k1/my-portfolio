<?php

namespace Botble\Block\Forms;

use Botble\Base\Forms\FieldOptions\ContentFieldOption;
use Botble\Base\Forms\FieldOptions\DescriptionFieldOption;
use Botble\Base\Forms\FieldOptions\NameFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\EditorField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\FormAbstract;
use Botble\Block\Http\Requests\BlockRequest;
use Botble\Block\Models\Block;

class BlockForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->model(Block::class)
            ->setValidatorClass(BlockRequest::class)
            ->add('name', TextField::class, NameFieldOption::make()->required()->toArray())
            ->add(
                'alias',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('core/base::forms.alias'))
                    ->placeholder(trans('core/base::forms.alias_placeholder'))
                    ->required()
                    ->maxLength(120)
                    ->toArray()
            )
            ->add('description', TextareaField::class, DescriptionFieldOption::make()->toArray())
            ->add('content', EditorField::class, ContentFieldOption::make()->toArray())
            ->add('status', SelectField::class, StatusFieldOption::make()->toArray())
            ->setBreakFieldPoint('status');
    }
}
