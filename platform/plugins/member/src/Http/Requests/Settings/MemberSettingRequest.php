<?php

namespace Botble\Member\Http\Requests\Settings;

use Botble\Base\Rules\OnOffRule;
use Botble\Support\Http\Requests\Request;

class MemberSettingRequest extends Request
{
    public function rules(): array
    {
        return [
            'verify_account_email' => new OnOffRule(),
        ];
    }
}
