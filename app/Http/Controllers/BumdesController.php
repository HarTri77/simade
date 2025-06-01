<?php

namespace App\Http\Controllers;

use App\Models\Bumdes;
use Illuminate\Http\Request;

class BumdesController extends Controller
{
    public function index()
    {
        $bumdes = Bumdes::paginate(6); // Pagination 6 item per halaman
        return view('bumdes.index', compact('bumdes'));
    }

    public function show($slug)
    {
        $item = Bumdes::where('slug', $slug)->firstOrFail();
        return view('bumdes.detail', compact('item'));
    }
}
