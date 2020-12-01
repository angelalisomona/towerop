<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class App extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'sdate', 'virginia', 'nofbales', 'nrc', 'name', 'merchant', 'vz', 'email'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
}
