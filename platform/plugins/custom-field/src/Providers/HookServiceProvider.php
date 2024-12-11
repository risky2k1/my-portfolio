<?php

namespace Botble\CustomField\Providers;

use Botble\ACL\Models\Role;
use Botble\Base\Facades\Assets;
use Botble\Base\Models\BaseModel;
use Botble\Base\Supports\ServiceProvider;
use Botble\Blog\Models\Post;
use Botble\CustomField\Facades\CustomField;
use Botble\Page\Models\Page;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class HookServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        add_action(BASE_ACTION_META_BOXES, [$this, 'handle'], 125, 2);
    }

    public function handle(string $priority, array|Model|null $object = null): void
    {
        if (! $object instanceof BaseModel) {
            return;
        }

        $reference = $object::class;
        if (CustomField::isSupportedModule($reference) && $priority == 'advanced') {
            add_custom_fields_rules_to_check([
                $reference => $object->id ?? null,
                'model_name' => $reference,
            ]);

            /**
             * Every model will have these rules by default
             */
            if (Auth::guard()->check()) {
                add_custom_fields_rules_to_check([
                    'logged_in_user' => Auth::guard()->id(),
                    'logged_in_user_has_role' => Role::query()->pluck('id')->all(),
                ]);
            }

            if (defined('PAGE_MODULE_SCREEN_NAME') && $reference == Page::class) {
                add_custom_fields_rules_to_check([
                    'page_template' => $object->template ?? '',
                ]);
            }

            if (defined('POST_MODULE_SCREEN_NAME')) {
                if ($object instanceof Post) {
                    $relatedCategoryIds = $object->categories()->allRelatedIds()->toArray();
                    add_custom_fields_rules_to_check([
                        $reference . '_post_with_related_category' => $relatedCategoryIds,
                        $reference . '_post_format' => $object->format_type,
                    ]);
                }
            }

            echo $this->render($reference, $object->id ?? null);
        }
    }

    protected function render(string $reference, int|string|null $id): ?string
    {
        $customFieldBoxes = get_custom_field_boxes($reference, $id);

        if (! $customFieldBoxes) {
            return null;
        }

        Assets::addStylesDirectly([
            'vendor/core/plugins/custom-field/css/custom-field.css',
        ])
            ->addScriptsDirectly([
                'vendor/core/plugins/custom-field/js/use-custom-fields.js',
            ])
            ->addScripts(['jquery-ui']);

        CustomField::renderAssets();

        return CustomField::renderCustomFieldBoxes($customFieldBoxes);
    }
}
