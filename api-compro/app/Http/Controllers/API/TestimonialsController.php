<?php

namespace App\Http\Controllers\API;

use App\Models\Testimonials;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
class TestimonialsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $testimonials = Testimonials::all();
    
        if ($testimonials->isEmpty()) {
            return response()->json([
                'message' => 'Data testimonials tidak ditemukan',
                'error' => true
            ], 404); // 404 Not Found
        }
    
        return response()->json([
            'data' => $testimonials,
            'message' => 'Data testimonials berhasil diambil',
            'error' => false
        ]);
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'title_box' => 'required',
            'description' => 'required',
            'description_box' => 'required',
            'image' => 'required|max:12000'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Ada kesalahan',
                'data' => $validator->errors()
            ]);
        }

        $testimonials = Testimonials::create([
            'title' => $request->title,
            'title_box' => $request->title_box,
            'description' => $request->description,
            'description_box' => $request->description_box,
            'image' => $request->image,
        ]);
        
        return response()->json([
            'success' => true,
            'message' => 'Sukses create Data Service',
        ]);

    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Testimonials $testimonials)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Testimonials $testimonials)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Testimonials $testimonials)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Testimonials $testimonials)
    {
        //
    }
}
