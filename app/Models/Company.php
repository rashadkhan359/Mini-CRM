<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    //Relationship with Employees
    function employees(){
        return $this->hasMany(Employees::class);
    }
}
