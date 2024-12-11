<?php

if (is_plugin_active('blog')) {
    require_once __DIR__ . '/tags.php';

    register_widget(TagsWidget::class);
}
