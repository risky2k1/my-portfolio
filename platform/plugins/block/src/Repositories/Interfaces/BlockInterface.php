<?php

namespace Botble\Block\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface BlockInterface extends RepositoryInterface
{
    public function createSlug(?string $name, int|string|null $id): string;
}
