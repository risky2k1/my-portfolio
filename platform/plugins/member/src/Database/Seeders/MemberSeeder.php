<?php

namespace Botble\Member\Database\Seeders;

use Botble\Base\Models\BaseModel;
use Botble\Base\Supports\BaseSeeder;
use Botble\Member\Models\Member;
use Botble\Member\Models\MemberActivityLog;
use Illuminate\Support\Facades\Hash;

class MemberSeeder extends BaseSeeder
{
    public function run(): void
    {
        Member::query()->truncate();
        MemberActivityLog::query()->truncate();

        Member::query()->insert($this->getMemberData());
    }

    protected function getMemberData(): array
    {
        $faker = $this->fake();
        $now = $this->now();

        $data = [
            [
                'id' => BaseModel::isUsingIntegerId() ? 1 : $faker->uuid(),
                'first_name' => $faker->firstName(),
                'last_name' => $faker->lastName(),
                'email' => 'member@gmail.com',
                'password' => Hash::make('12345678'),
                'confirmed_at' => $now,
                'created_at' => $now,
                'updated_at' => $now,
            ],
        ];

        for ($i = 2; $i < 11; $i++) {
            $data[] = [
                'id' => BaseModel::isUsingIntegerId() ? $i : $faker->uuid(),
                'first_name' => $faker->firstName(),
                'last_name' => $faker->lastName(),
                'email' => $faker->email(),
                'password' => Hash::make('12345678'),
                'confirmed_at' => $now,
                'created_at' => $now,
                'updated_at' => $now,
            ];
        }

        return $data;
    }
}
