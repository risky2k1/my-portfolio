<?php

namespace Database\Seeders;

use Botble\Base\Models\BaseModel;
use Botble\Member\Database\Seeders\MemberSeeder as BaseMemberSeeder;
use Illuminate\Support\Facades\Hash;

class MemberSeeder extends BaseMemberSeeder
{
    protected function getMemberData(): array
    {
        $files = $this->uploadFiles('members');

        $now = $this->now();

        $data = parent::getMemberData();

        $data[] = [
            'id' => BaseModel::getTypeOfId() === 'BIGINT' ? 11 : $this->fake()->uuid(),
            'first_name' => 'John',
            'last_name' => 'Smith',
            'email' => 'john.smith@botble.com',
            'password' => Hash::make('12345678'),
            'confirmed_at' => $now,
            'created_at' => $now,
            'updated_at' => $now,
        ];

        foreach ($data as $index => $item) {
            if (! isset($files[$index])) {
                continue;
            }

            $file = $files[$index];

            $data[$index]['avatar_id'] = $file['error'] ? 0 : $file['data']->id;
        }

        return $data;
    }
}
