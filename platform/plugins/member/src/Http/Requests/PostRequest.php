<?php

namespace Botble\Member\Http\Requests;

use Botble\Base\Rules\MediaImageRule;
use Botble\Blog\Http\Requests\PostRequest as BasePostRequest;

class PostRequest extends BasePostRequest
{
    public function rules(): array
    {
        return [
            ...parent::rules(),
            'image_input' => ['nullable', new MediaImageRule()],
        ];
    }
}
