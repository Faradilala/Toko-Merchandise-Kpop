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

Route::get('/catalog', function () {
    return view('catalog.index');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('catalog/{id}', [App\Http\Controllers\CatalogController::class, 'index']);
Route::post('catalog/{id}', [App\Http\Controllers\CatalogController::class, 'pesan']);
Route::get('/catalog/cari', [App\Http\Controllers\CatalogController::class, 'cari']);

//checkout
Route::get('check-out', [App\Http\Controllers\CatalogController::class, 'check_out']);
Route::delete('check-out/{id}', [App\Http\Controllers\CatalogController::class, 'delete']);
Route::get('konfirmasi-check-out', [App\Http\Controllers\CatalogController::class, 'konfirmasi']);

//profile
Route::get('profile', [App\Http\Controllers\ProfileController::class, 'index']);
Route::post('profile', [App\Http\Controllers\ProfileController::class, 'update']);

//history
Route::get('history', [App\Http\Controllers\HistoryController::class, 'index']);
Route::get('history/{id}', [App\Http\Controllers\HistoryController::class, 'detail']);

//layout admin, tidak jadi
Route::get('/layouts/admin', function () {
    return view('layouts.admin');
});
