<?php

return [
    [
        'name' => 'Custom Fields',
        'flag' => 'custom-fields.index',
        'parent_flag' => 'core.cms',
    ],
    [
        'name' => 'Create',
        'flag' => 'custom-fields.create',
        'parent_flag' => 'custom-fields.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'custom-fields.edit',
        'parent_flag' => 'custom-fields.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'custom-fields.destroy',
        'parent_flag' => 'custom-fields.index',
    ],
];
