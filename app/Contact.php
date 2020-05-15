<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Contact extends Model
{
    protected $guarded = [];

    public function getDateAttribute()
    {
        // return Carbon::now();
        return $this->created_at->diffForhumans();
    }

}
