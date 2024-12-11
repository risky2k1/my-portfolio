<?php

namespace Botble\Member\Forms;

use Botble\Base\Forms\FieldOptions\DatePickerFieldOption;
use Botble\Base\Forms\FieldOptions\DescriptionFieldOption;
use Botble\Base\Forms\FieldOptions\EmailFieldOption;
use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\DatePickerField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\OnOffField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\FormAbstract;
use Botble\Member\Http\Requests\MemberCreateRequest;
use Botble\Member\Models\Member;

class MemberForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->model(Member::class)
            ->setValidatorClass(MemberCreateRequest::class)
            ->columns()
            ->add(
                'first_name',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/member::member.first_name'))
                    ->required()
                    ->maxLength(120)
                    ->colspan(1)
                    ->toArray()
            )
            ->add(
                'last_name',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/member::member.last_name'))
                    ->required()
                    ->maxLength(120)
                    ->colspan(1)
                    ->toArray()
            )
            ->add(
                'email',
                TextField::class,
                EmailFieldOption::make()->required()->colspan(1)->toArray()
            )
            ->add(
                'phone',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/member::member.phone'))
                    ->placeholder(trans('plugins/member::member.phone_placeholder'))
                    ->maxLength(15)
                    ->colspan(1)
                    ->toArray()
            )
            ->add(
                'dob',
                DatePickerField::class,
                DatePickerFieldOption::make()
                    ->label(trans('plugins/member::member.dob'))
                    ->colspan(2)
                    ->toArray()
            )
            ->add(
                'description',
                TextareaField::class,
                DescriptionFieldOption::make()->colspan(2)->toArray()
            )
            ->add(
                'is_change_password',
                OnOffField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/member::member.form.change_password'))
                    ->defaultValue(0)
                    ->colspan(2)
                    ->toArray()
            )
            ->add(
                'password',
                'password',
                TextFieldOption::make()
                    ->label(trans('plugins/member::member.form.password'))
                    ->collapsible('is_change_password', 1, ! $this->getModel()->exists || $this->getModel()->is_change_password)
                    ->required()
                    ->maxLength(60)
                    ->colspan(1)
                    ->toArray()
            )
            ->add(
                'password_confirmation',
                'password',
                TextFieldOption::make()
                    ->label(trans('plugins/member::member.form.password_confirmation'))
                    ->collapsible('is_change_password', 1, ! $this->getModel()->exists || $this->getModel()->is_change_password)
                    ->required()
                    ->maxLength(60)
                    ->colspan(1)
                    ->toArray()
            )
            ->add('status', SelectField::class, StatusFieldOption::make()->toArray())
            ->add(
                'avatar_image',
                MediaImageField::class,
                MediaImageFieldOption::make()->value($this->getModel()->avatar->url)->toArray()
            )
            ->setBreakFieldPoint('status');
    }
}
