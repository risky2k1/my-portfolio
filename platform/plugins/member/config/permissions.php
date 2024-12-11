<?php

return [
    [
        'name' => 'Members',
        'flag' => 'member.index',
        'parent_flag' => 'core.cms',
    ],
    [
        'name' => 'Create',
        'flag' => 'member.create',
        'parent_flag' => 'member.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'member.edit',
        'parent_flag' => 'member.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'member.destroy',
        'parent_flag' => 'member.index',
    ],
    [
        'name' => 'Member',
        'flag' => 'member.settings',
        'parent_flag' => 'settings.others',
    ],
];
