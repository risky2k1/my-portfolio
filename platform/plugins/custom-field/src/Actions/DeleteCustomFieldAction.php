<?php

namespace Botble\CustomField\Actions;

use Botble\Base\Events\DeletedContentEvent;
use Botble\CustomField\Models\FieldGroup;
use Botble\CustomField\Repositories\Interfaces\FieldGroupInterface;

class DeleteCustomFieldAction extends AbstractAction
{
    public function __construct(protected FieldGroupInterface $fieldGroupRepository)
    {
    }

    public function run(FieldGroup $fieldGroup): array
    {
        $result = $this->fieldGroupRepository->delete($fieldGroup);

        DeletedContentEvent::dispatch($fieldGroup::class, request(), $fieldGroup);

        if (! $result) {
            return $this->error();
        }

        return $this->success(null, [
            'id' => $fieldGroup->id,
        ]);
    }
}
