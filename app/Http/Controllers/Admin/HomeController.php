<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Company;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //Dashboard
    public function index(){
        $data = Company::orderBy('name', 'asc')->get();
        return view('index', [
            'companies' => $data
        ]);
    }

}
