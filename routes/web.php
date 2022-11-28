<?php

use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\EmployeesController;
use Illuminate\Support\Facades\Route;
use App\Models\Company;
use App\Models\Employees;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Show Admin Login Form
Route::get('/login', [AdminController::class, 'login'])->name('login');
//Authenticate Admin Login
Route::post('/admin/authenticate', [AdminController::class, 'authenticate']);

//Admin Middleware
Route::middleware('admin')->group(function (){
    //Dashboard
    Route::get('dashboard', [HomeController::class, 'index']);

    // Dashboard View
    Route::get('/employees/{id}/view',  [EmployeesController::class, 'sub_employees']);

    //Company Resource
    Route::resource('/company', CompanyController::class);
    Route::get('/company/{id}/delete', [CompanyController::class, 'destroy']);

    //Employees Resource
    Route::resource('/employees', EmployeesController::class);
    Route::get('/employees/{id}/delete', [EmployeesController::class, 'destroy']);

    //Admin Logout
    Route::post('/logout', [AdminController::class, 'logout']);


    //Stripe Functionality
    Route::get('checkout', [CheckoutController::class, 'checkout']);
    Route::post('makepayment', [CheckoutController::class, 'finalcheck']);
    Route::post('checkout', [CheckoutController::class, 'paymentprocess'])->name('payment.process');

});

//Distance Route
Route::get('/distance', [CityController::class, 'index']);
Route::get('/distanceprocess', [CityController::class, 'calculate']);