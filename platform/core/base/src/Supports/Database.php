<?php

namespace Botble\Base\Supports;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class Database
{
    public static function restoreFromPath(string $pathToSqlFile, string $connection = null): void
    {
        if (! File::exists($pathToSqlFile) || File::size($pathToSqlFile) < 1024) {
            return;
        }

        DB::purge($connection);
        DB::connection()->setDatabaseName(DB::getDatabaseName());
        DB::getSchemaBuilder()->dropAllTables();
        DB::unprepared(file_get_contents($pathToSqlFile));
    }
}
