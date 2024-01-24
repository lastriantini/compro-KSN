<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\HomeController;
use App\Http\Controllers\API\ContactUsController;
use App\Http\Controllers\API\AboutUsController;
use App\Http\Controllers\API\ServicesController;
use App\Http\Controllers\API\PortfolioController;
use App\Http\Controllers\API\TestimonialsController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

//HOME
Route::post('/home', [HomeController::class, 'create']);
Route::get('/home', [HomeController::class, 'index']);
Route::put('/home/{id}', [HomeController::class, 'update']);

//SERVICES
Route::post('/services', [ServicesController::class, 'create']);
Route::get('/services', [ServicesController::class, 'index']);
// Route::put('/services/{id}', [ServicesController::class, 'update']);

//ABOUT US
Route::post('/about', [AboutUsController::class, 'create']);
Route::get('/about', [AboutUsController::class, 'index']);
// Route::put('/about/{id}', [AboutUsController::class, 'update']);

//PORTFOLIO
Route::post('/portfolio', [PortfolioController::class, 'create']);
Route::get('/portfolio', [PortfolioController::class, 'index']);
// Route::put('/portfolio/{id}', [PortfolioController::class, 'update']);

//TESTIMONIALS
Route::post('/testimonials', [TestimonialsController::class, 'create']);
Route::get('/testimonials', [TestimonialsController::class, 'index']);
// Route::put('/testimonials/{id}', [TestimonialsController::class, 'update']);

//CONTACT US
Route::post('/contact', [ContactUsController::class, 'create']);
Route::get('/contact', [ContactUsController::class, 'index']);
// Route::put('/contact/{id}', [ContactUsController::class, 'update']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
