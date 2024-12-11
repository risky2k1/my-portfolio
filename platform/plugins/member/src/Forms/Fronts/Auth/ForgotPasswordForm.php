<?php

namespace Botble\Member\Forms\Fronts\Auth;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Forms\Fields\EmailField;
use Botble\Base\Forms\Fields\HtmlField;
use Botble\Member\Forms\Fronts\Auth\FieldOptions\EmailFieldOption;
use Botble\Member\Http\Requests\Fronts\Auth\ForgotPasswordRequest;

class ForgotPasswordForm extends AuthForm
{
    public static function formTitle(): string
    {
        return trans('plugins/member::member.form.forgot_password_title');
    }

    public function setup(): void
    {
        parent::setup();

        $this
            ->setUrl(route('public.member.password.email'))
            ->setValidatorClass(ForgotPasswordRequest::class)
            ->icon('ti ti-lock-question')
            ->heading(__('Forgot Password'))
            ->description(__('Lost your password? Please enter your username or email address. You will receive a link to create a new password via email.'))
            ->add(
                'email',
                EmailField::class,
                EmailFieldOption::make()
                    ->label(__('Email'))
                    ->placeholder(__('Email address'))
                    ->icon('ti ti-mail')
                    ->toArray()
            )
            ->submitButton(sprintf('%s %s', __('Send Password Reset Link'), BaseHelper::renderIcon('ti ti-arrow-narrow-right', null, ['class' => 'ms-1'])))
            ->add('back_to_login', HtmlField::class, [
                'html' => sprintf(
                    '<div class="mt-3 text-center"><a href="%s" class="text-decoration-underline">%s</a></div>',
                    route('public.member.login'),
                    __('Back to login page')
                ),
            ]);
    }
}
