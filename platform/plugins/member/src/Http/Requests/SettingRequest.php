<?php

namespace Botble\Member\Http\Requests;

use Botble\Base\Rules\PhoneNumberRule;
use Botble\Support\Http\Requests\Request;

class SettingRequest extends Request
{
    public function rules(): array
    {
        return [
            'first_name' => ['required', 'string', 'max:120'],
            'last_name' => ['required', 'string', 'max:120'],
            'phone' => ['nullable', new PhoneNumberRule()],
            'dob' => ['nullable', 'date', 'max:20'],
        ];
    }
}
