<?php

namespace App\Http\Controllers\API;

use App\Models\ContactUs;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class ContactUsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $contact = ContactUs::all();
    
        if ($contact->isEmpty()) {
            return response()->json([
                'message' => 'Data contact tidak ditemukan',
                'error' => true
            ], 404); // 404 Not Found
        }
    
        return response()->json([
            'data' => $contact,
            'message' => 'Data contact berhasil diambil',
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
            'description' => 'required',
            'image' => 'required|max:12000',
            'addres' => 'required',
            'telp' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Ada kesalahan',
                'data' => $validator->errors()
            ]);
        }

        $contact = ContactUs::create([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $request->image,
            'addres' => $request->addres,
            'telp' => $request->telp,
        ]);
        
        return response()->json([
            'success' => true,
            'message' => 'Sukses create Data contact',
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
    public function show(ContactUs $contactUs)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ContactUs $contactUs)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ContactUs $contactUs)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ContactUs $contactUs)
    {
        //
    }
}
