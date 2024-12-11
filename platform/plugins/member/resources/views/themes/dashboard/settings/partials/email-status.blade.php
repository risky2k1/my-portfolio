@if($user->confirmed_at)
    <small class="text-success d-flex align-items-center gap-1 mt-n2 mb-3">
        <x-core::icon name="ti ti-circle-check" size="sm" />
        {{ trans('plugins/member::dashboard.verified') }}
    </small>
@else
    <x-core::form.helper-text class="mb-3 mt-n2">
        {{ trans('plugins/member::dashboard.verify_require_desc') }}
        <a href="{{ route('public.member.resend_confirmation', ['email' => $user->email]) }}">
            {{ trans('plugins/member::dashboard.resend') }}
        </a>
    </x-core::form.helper-text>
@endif
