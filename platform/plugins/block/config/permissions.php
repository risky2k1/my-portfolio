<?php

return [
    [
        'name' => 'Static Blocks',
        'flag' => 'block.index',
        'parent_flag' => 'core.cms',
    ],
    [
        'name' => 'Create',
        'flag' => 'block.create',
        'parent_flag' => 'block.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'block.edit',
        'parent_flag' => 'block.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'block.destroy',
        'parent_flag' => 'block.index',
    ],
];
