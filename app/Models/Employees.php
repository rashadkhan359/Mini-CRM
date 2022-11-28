<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employees extends Model
{
    use HasFactory;
    

    //Relationship with Company
    function company(){
        return $this->belongsTo(Company::class);
    }

    public function scopeFilter($query, $filter){
        if($filter ?? false){
            $query->where('company_id', '=', $filter);
        }
    }
}
