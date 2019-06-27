<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SystemSetting extends Model
{
    protected $table = 'system_setting';
    /**
     * The attributes excluded from the model's JSON form.
     * @var array
     */
    protected $hidden = [
    ];
}
