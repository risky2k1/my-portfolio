<?php

namespace Theme\Ripple\Http\Controllers;

use Botble\Base\Facades\BaseHelper;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Http\Controllers\PublicController;
use Illuminate\Http\Request;

class RippleController extends PublicController
{
    /**
     * Search post
     *
     * @bodyParam q string required The search keyword.
     *
     * @group Blog
     */
    public function getSearch(Request $request, PostInterface $postRepository)
    {
        $query = BaseHelper::stringify($request->input('q'));

        if (! empty($query)) {
            $posts = $postRepository->getSearch($query);

            $data = [
                'items' => Theme::partial('search', compact('posts')),
                'query' => $query,
                'count' => $posts->count(),
            ];

            if ($data['count'] > 0) {
                return $this
                    ->httpResponse()
                    ->setData(apply_filters(BASE_FILTER_SET_DATA_SEARCH, $data, 10, 1));
            }
        }

        return $this
            ->httpResponse()
            ->setError()
            ->setMessage(__('No results found, please try with different keywords.'));
    }
}
