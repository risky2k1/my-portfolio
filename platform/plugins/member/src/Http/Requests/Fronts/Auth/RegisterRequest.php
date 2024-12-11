<?php

namespace Botble\Member\Http\Requests\Fronts\Auth;

use Botble\Base\Rules\EmailRule;
use Botble\Captcha\Facades\Captcha;
use Botble\Support\Http\Requests\Request;

class RegisterRequest extends Request
{
    public function rules(): array
    {
        return [
            'first_name' => ['required', 'string', 'max:120', 'min:2'],
            'last_name' => ['required', 'string', 'max:120', 'min:2'],
            'email' => ['required', 'max:60', 'min:6', new EmailRule(), 'unique:members'],
            'password' => ['required', 'min:6', 'confirmed'],
        ];
    }

    public function attributes(): array
    {
        return is_plugin_active('captcha') ? Captcha::attributes() : [];
    }
}
