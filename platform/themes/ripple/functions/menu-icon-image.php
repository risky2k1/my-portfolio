<?php

use Botble\Menu\Facades\Menu;
use Illuminate\Routing\Events\RouteMatched;

app('events')->listen(RouteMatched::class, fn () => Menu::useMenuItemIconImage());
