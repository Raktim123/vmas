<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StopageController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\VehicleController;
use App\Http\Controllers\VehicleStopageController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->middleware(['auth', 'verified']);

Route::get('/online-admission', [StudentController::class, "create"]);
Route::post('/check-seat', [StudentController::class, "check_seat"])->name('check_seat')->withoutMiddleware([\App\Http\Middleware\VerifyCsrfToken::class]);;

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified']);

Route::middleware(['auth', 'verified'])->group(function () {
    Route::resource('stopages', StopageController::class);
    Route::resource('vehicles', VehicleController::class);
    Route::resource('students', StudentController::class);

    Route::get('vehicle-stopages/get-vehicle-stopages/{id}', [VehicleStopageController::class, "get_vehicle_stopages"]);
    Route::resource('vehicle-stopages', VehicleStopageController::class);
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';