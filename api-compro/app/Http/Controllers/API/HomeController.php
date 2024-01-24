<?php

namespace App\Http\Controllers\API;

use App\Models\Home;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $home = Home::all();
    
        if ($home->isEmpty()) {
            return response()->json([
                'message' => 'Data home tidak ditemukan',
                'error' => true
            ], 404); // 404 Not Found
        }
    
        return response()->json([
            'data' => $home,
            'message' => 'Data home berhasil diambil',
            'error' => false
        ]);
    }
    

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'navbar' => 'required',
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|max:12000'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Ada kesalahan',
                'data' => $validator->errors()
            ]);
        }

        $home = Home::create([
            'navbar' => $request->navbar,
            'title' => $request->title,
            'description' => $request->description,
            'image' => $request->image,
        ]);
        
        return response()->json([
            'success' => true,
            'message' => 'Sukses create Data Home',
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
    public function show(Home $home)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Home $home)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
{
    $home = Home::find($id);

    if (!$home) {
        return response()->json([
            'status' => false,
            'message' => 'Data tidak ditemukan'
        ], 404);
    }

    $rules = [
        'navbar' => 'required',
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|max:12000'
    ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'message' => 'Gagal melakukan update data!',
            'data' => $validator->errors()
        ]);
    }

   
$home->navbar = $request->input('navbar');
$home->title = $request->input('title');
$home->description = $request->input('description');

// Handling file upload
if ($request->hasFile('image')) {
    $image = $request->file('image');
    $imageName = time() . '.' . $image->getClientOriginalExtension();
    $image->move(public_path('uploads'), $imageName);
    $home->image = 'uploads/' . $imageName;
}

$home->save();
    return response()->json([
        'status' => true,
        'message' => 'Sukses Update Data'
    ]);
}

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Home $home)
    {
        //
    }
}
