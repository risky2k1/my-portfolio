<?php

namespace Botble\Member\Http\Requests;

use Botble\Base\Rules\EmailRule;
use Botble\Support\Http\Requests\Request;

class MemberCreateRequest extends Request
{
    public function rules(): array
    {
        return [
            'first_name' => ['required', 'string', 'max:120', 'min:2'],
            'last_name' => ['required', 'string', 'max:120', 'min:2'],
            'email' => ['required', 'max:60', 'min:6', new EmailRule(), 'unique:members'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
        ];
    }
}
