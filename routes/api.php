<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/productos', [App\Http\Controllers\ProductController::class, 'ListaProducto'])->name('productos');
Route::get('/reportsale', [App\Http\Controllers\SaleController::class, 'ReportSale'])->name('reportsale');
Route::get('/clientes', [App\Http\Controllers\ClientController::class, 'ListaCliente'])->name('clientes');

Route::get('/sale', [App\Http\Controllers\SaleController::class, 'index'])->name('sale');
Route::post('/sale/store', [App\Http\Controllers\SaleController::class, 'store'])->name('sale.store');
Route::get('/invoice/{sale}', [App\Http\Controllers\SaleController::class, 'show'])->name('invoice');
Route::get('/print/{sale}', [App\Http\Controllers\SaleController::class, 'print'])->name('print');


