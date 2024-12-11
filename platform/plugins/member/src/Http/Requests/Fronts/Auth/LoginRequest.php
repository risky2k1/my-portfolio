<?php

namespace Botble\Member\Http\Requests\Fronts\Auth;

use Botble\Base\Rules\EmailRule;
use Botble\Support\Http\Requests\Request;

class LoginRequest extends Request
{
    public function rules(): array
    {
        return [
            'email' => ['required', 'string', new EmailRule()],
            'password' => ['required', 'string'],
        ];
    }
}
