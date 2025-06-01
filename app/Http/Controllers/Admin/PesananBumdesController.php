<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PesananBumdes;
use Illuminate\Http\Request;

class PesananBumdesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pesanan = PesananBumdes::with(['bumdes' => function($query) {
                $query->select('id', 'produk', 'gambar');
            }])
            ->latest()
            ->paginate(10); // Pagination 10 item per halaman

        return view('admin.bumdes.pesanan', compact('pesanan'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $pesanan = PesananBumdes::with('bumdes')->findOrFail($id);
        $statusOptions = [
            'menunggu' => 'Menunggu Konfirmasi',
            'diproses' => 'Sedang Diproses',
            'dikirim' => 'Sedang Dikirim',
            'selesai' => 'Selesai',
            'dibatalkan' => 'Dibatalkan'
        ];

        return view('admin.bumdes.edit-pesanan', compact('pesanan', 'statusOptions'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'status' => 'required|in:menunggu,diproses,dikirim,selesai,dibatalkan',
            'catatan_admin' => 'nullable|string|max:500'
        ]);

        $pesanan = PesananBumdes::findOrFail($id);
        $pesanan->update($validated);

        return redirect()->route('admin.pesanan.index')
            ->with('success', 'Status pesanan berhasil diperbarui');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $pesanan = PesananBumdes::findOrFail($id);
        $pesanan->delete();

        return back()->with('success', 'Pesanan berhasil dihapus');
    }

    /**
     * Show pesanan details
     */
    public function show($id)
    {
        $pesanan = PesananBumdes::with('bumdes')->findOrFail($id);
        return view('admin.bumdes.detail-pesanan', compact('pesanan'));
    }
}
