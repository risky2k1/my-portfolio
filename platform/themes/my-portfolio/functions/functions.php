<?php

register_page_template([
    'default' => 'Default',
]);

register_sidebar([
    'id' => 'second_sidebar',
    'name' => 'Second sidebar',
    'description' => 'This is a sample sidebar for my-portfolio theme',
]);

RvMedia::setUploadPathAndURLToPublic();
