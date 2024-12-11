<?php

namespace Botble\Member\Http\Controllers;

use Botble\ACL\Traits\SendsPasswordResetEmails;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Member\Forms\Fronts\Auth\ForgotPasswordForm;
use Botble\Member\Http\Requests\Fronts\Auth\ForgotPasswordRequest;
use Botble\SeoHelper\Facades\SeoHelper;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Password;

class ForgotPasswordController extends BaseController
{
    use SendsPasswordResetEmails {
        SendsPasswordResetEmails::sendResetLinkEmail as parentSendResetLinkEmail;
    }

    public function showLinkRequestForm()
    {
        SeoHelper::setTitle(trans('plugins/member::member.forgot_password'));

        return Theme::scope(
            'member.auth.passwords.email',
            ['form' => ForgotPasswordForm::create()],
            'plugins/member::themes.auth.passwords.email'
        )->render();
    }

    public function sendResetLinkEmail(ForgotPasswordRequest $request)
    {
        return $this->parentSendResetLinkEmail($request);
    }

    public function broker()
    {
        return Password::broker('members');
    }
}
