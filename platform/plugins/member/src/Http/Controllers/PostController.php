<?php

namespace Botble\Member\Http\Controllers;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Facades\EmailHandler;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Blog\Models\Post;
use Botble\Blog\Models\Tag;
use Botble\Blog\Services\StoreCategoryService;
use Botble\Blog\Services\StoreTagService;
use Botble\Media\Facades\RvMedia;
use Botble\Member\Forms\PostForm;
use Botble\Member\Http\Requests\PostRequest;
use Botble\Member\Models\Member;
use Botble\Member\Models\MemberActivityLog;
use Botble\Member\Tables\PostTable;
use Illuminate\Http\Request;

class PostController extends BaseController
{
    public function index(PostTable $postTable)
    {
        $this->pageTitle(trans('plugins/blog::posts.posts'));

        return $postTable->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/member::member.write_a_post'));

        return PostForm::create()->renderForm();
    }

    public function store(PostRequest $request, StoreTagService $tagService, StoreCategoryService $categoryService)
    {
        $this->processRequestData($request);

        $postForm = PostForm::create();
        $postForm
            ->saving(function (PostForm $form) use ($categoryService, $tagService, $request) {
                $post = $form->getModel();
                $post
                    ->fill([...$request->except('status'),
                        'author_id' => auth('member')->id(),
                        'author_type' => Member::class,
                        'status' => BaseStatusEnum::PENDING,
                    ])
                    ->save();

                MemberActivityLog::query()->create([
                    'action' => 'create_post',
                    'reference_name' => $post->name,
                    'reference_url' => route('public.member.posts.edit', $post->getKey()),
                ]);

                $tagService->execute($request, $post);

                $categoryService->execute($request, $post);

                EmailHandler::setModule(MEMBER_MODULE_SCREEN_NAME)
                    ->setVariableValues([
                        'post_name' => $post->name,
                        'post_url' => route('posts.edit', $post->getKey()),
                        'post_author' => $post->author->name,
                    ])
                    ->sendUsingTemplate('new-pending-post');
            });

        return $this
            ->httpResponse()
            ->setPreviousRoute('public.member.posts.index')
            ->setNextRoute('public.member.posts.edit', $postForm->getModel()->getKey())
            ->withCreatedSuccessMessage();
    }

    public function edit(Post $post)
    {
        /**
         * @var Post $post
         */
        $post = Post::query()
            ->where([
                'id' => $post->getKey(),
                'author_id' => auth('member')->id(),
                'author_type' => Member::class,
            ])
            ->firstOrFail();

        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $post->name]));

        return PostForm::createFromModel($post)->renderForm();
    }

    public function update(Post $post, PostRequest $request, StoreTagService $tagService, StoreCategoryService $categoryService)
    {
        /**
         * @var Post $post
         */
        $post = Post::query()
            ->where([
                'id' => $post->getKey(),
                'author_id' => auth('member')->id(),
                'author_type' => Member::class,
            ])
            ->firstOrFail();

        $this->processRequestData($request);

        $postForm = PostForm::createFromModel($post);

        $postForm
            ->saving(function (PostForm $form) use ($categoryService, $tagService, $request) {
                $post = $form->getModel();

                $post
                    ->fill($request->except('status'))
                    ->save();

                MemberActivityLog::query()->create([
                    'action' => 'update_post',
                    'reference_name' => $post->name,
                    'reference_url' => route('public.member.posts.edit', $post->getKey()),
                ]);

                $tagService->execute($request, $post);

                $categoryService->execute($request, $post);
            });

        return $this
            ->httpResponse()
            ->setPreviousRoute('public.member.posts.index')
            ->withUpdatedSuccessMessage();
    }

    protected function processRequestData(Request $request): Request
    {
        $account = auth('member')->user();

        if ($request->hasFile('image_input')) {
            $result = RvMedia::handleUpload($request->file('image_input'), 0, $account->upload_folder);
            if (! $result['error']) {
                $file = $result['data'];
                $request->merge(['image' => $file->url]);
            }
        }

        $shortcodeCompiler = shortcode()->getCompiler();

        $request->merge([
            'content' => $shortcodeCompiler->strip(
                $request->input('content'),
                $shortcodeCompiler->whitelistShortcodes()
            ),
        ]);

        $except = [
            'status',
            'is_featured',
        ];

        foreach ($except as $item) {
            $request->request->remove($item);
        }

        return $request;
    }

    public function destroy(Post $post)
    {
        $post = Post::query()
            ->where([
                'id' => $post->getKey(),
                'author_id' => auth('member')->id(),
                'author_type' => Member::class,
            ])
            ->firstOrFail();

        $post->delete();

        MemberActivityLog::query()->create([
            'action' => 'delete_post',
            'reference_name' => $post->name,
        ]);

        return $this
            ->httpResponse()
            ->withDeletedSuccessMessage();
    }

    public function getAllTags()
    {
        return Tag::query()->pluck('name')->all();
    }
}
