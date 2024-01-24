<?php

namespace App\Http\Controllers\API;

use App\Models\AboutUs;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class AboutUsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $about = AboutUs::all();
    
        if ($about->isEmpty()) {
            return response()->json([
                'message' => 'Data about tidak ditemukan',
                'error' => true
            ], 404); // 404 Not Found
        }
    
        return response()->json([
            'data' => $about,
            'message' => 'Data about berhasil diambil',
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

        $about = AboutUs::create([
            'title' => $request->title,
            'title_box' => $request->title_box,
            'description' => $request->description,
            'description_box' => $request->description_box,
            'image' => $request->image,
        ]);
        
        return response()->json([
            'success' => true,
            'message' => 'Sukses create Data about',
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
    public function show(AboutUs $aboutUs)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(AboutUs $aboutUs)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, AboutUs $aboutUs)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(AboutUs $aboutUs)
    {
        //
    }
}
