<?php

namespace Botble\Member\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Models\BaseModel;
use Botble\Base\Supports\Avatar;
use Botble\Media\Facades\RvMedia;
use Botble\Media\Models\MediaFile;
use Botble\Member\Notifications\ConfirmEmailNotification;
use Botble\Member\Notifications\ResetPasswordNotification;
use Illuminate\Auth\Authenticatable;
use Illuminate\Auth\MustVerifyEmail;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\MorphMany;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Laravel\Sanctum\HasApiTokens;
use Throwable;

class Member extends BaseModel implements
    AuthenticatableContract,
    AuthorizableContract,
    CanResetPasswordContract
{
    use Authenticatable;
    use Authorizable;
    use CanResetPassword;
    use MustVerifyEmail;
    use HasApiTokens;
    use Notifiable;

    protected $table = 'members';

    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'password',
        'avatar_id',
        'dob',
        'phone',
        'description',
        'gender',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'password' => 'hashed',
        'confirmed_at' => 'datetime',
        'dob' => 'date',
        'first_name' => SafeContent::class,
        'last_name' => SafeContent::class,
        'description' => SafeContent::class,
    ];

    protected static function booted(): void
    {
        static::deleting(function (Member $account) {
            $folder = Storage::path($account->upload_folder);
            if (File::isDirectory($folder) && Str::endsWith($account->upload_folder, '/' . $account->getKey())) {
                File::deleteDirectory($folder);
            }
        });
    }

    public function sendPasswordResetNotification($token): void
    {
        $this->notify(new ResetPasswordNotification($token));
    }

    public function sendEmailVerificationNotification(): void
    {
        $this->notify(new ConfirmEmailNotification());
    }

    public function avatar(): BelongsTo
    {
        return $this->belongsTo(MediaFile::class)->withDefault();
    }

    public function posts(): MorphMany
    {
        return $this->morphMany('Botble\Blog\Models\Post', 'author');
    }

    protected function firstName(): Attribute
    {
        return Attribute::get(fn ($value) => ucfirst((string) $value));
    }

    protected function lastName(): Attribute
    {
        return Attribute::get(fn ($value) => ucfirst((string) $value));
    }

    protected function name(): Attribute
    {
        return Attribute::get(fn () => trim($this->first_name . ' ' . $this->last_name));
    }

    protected function avatarUrl(): Attribute
    {
        return Attribute::get(function () {
            if ($this->avatar->url) {
                return RvMedia::url($this->avatar->url);
            }

            try {
                return Avatar::createBase64Image($this->name);
            } catch (Throwable) {
                return RvMedia::getDefaultImage();
            }
        });
    }

    protected function avatarThumbUrl(): Attribute
    {
        return Attribute::get(function () {
            if ($this->avatar->url) {
                return RvMedia::getImageUrl($this->avatar->url, 'thumb');
            }

            try {
                return Avatar::createBase64Image($this->name);
            } catch (Throwable) {
                return RvMedia::getDefaultImage();
            }
        })->shouldCache();
    }

    protected function uploadFolder(): Attribute
    {
        return Attribute::make(
            get: function () {
                $folder = $this->getKey() ? 'members/' . $this->getKey() : 'members';

                return apply_filters('member_account_upload_folder', $folder, $this);
            }
        )->shouldCache();
    }
}
