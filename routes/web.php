<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// ------------------------- 
// ### Route Employee
// --------------------------
Route::get('/employee', [App\Http\Controllers\EmployeeController::class, 'index'])->name('employee');
Route::get('/employee/create', [App\Http\Controllers\EmployeeController::class, 'create'])->name('employee.create');
Route::post('employee/store', [App\Http\Controllers\EmployeeController::class, 'store'])->name('employee.store');
// update
// destroy

// ------------------------- 
// ### Route User
// --------------------------
Route::get('users/', [App\Http\Controllers\UserController::class, 'index'])->name('user');
Route::get('users/profile/{id}', [App\Http\Controllers\UserController::class, 'show'])->name('user.profile');

// ------------------------- 
// ### Route Product
// --------------------------
Route::get('products/', [App\Http\Controllers\ProductController::class, 'index'])->name('product');
Route::get('products/create', [App\Http\Controllers\ProductController::class, 'create'])->name('product.create');
Route::post('products/store', [App\Http\Controllers\ProductController::class, 'store'])->name('product.store');
// update
// destroy

// ------------------------- 
// ### Route Sale
// --------------------------
Route::get('sale/', [App\Http\Controllers\SaleController::class, 'index'])->name('sale');
Route::post('sale/store', [App\Http\Controllers\SaleController::class, 'store'])->name('sale.store');