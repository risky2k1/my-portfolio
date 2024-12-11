<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('field_groups', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->text('rules')->nullable();
            $table->integer('order')->default(0);
            $table->foreignId('created_by')->nullable()->index();
            $table->foreignId('updated_by')->nullable()->index();
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('field_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('field_group_id')->index();
            $table->foreignId('parent_id')->nullable()->index();
            $table->integer('order')->default(0)->nullable();
            $table->string('title');
            $table->string('slug');
            $table->string('type', 100);
            $table->text('instructions')->nullable();
            $table->text('options')->nullable();
        });

        Schema::create('custom_fields', function (Blueprint $table) {
            $table->id();
            $table->string('use_for');
            $table->foreignId('use_for_id');
            $table->foreignId('field_item_id')->index();
            $table->string('type');
            $table->string('slug');
            $table->text('value')->nullable();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('custom_fields');
        Schema::dropIfExists('field_items');
        Schema::dropIfExists('field_groups');
    }
};
