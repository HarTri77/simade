<?php

namespace App\Http\Controllers;

use App\Models\Bumdes;
use App\Models\PesananBumdes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class PembelianBumdesController extends Controller
{
    /**
     * Menampilkan form pemesanan
     */
    public function create($id)
    {
        try {
            $produk = Bumdes::select('id', 'produk', 'harga', 'gambar', 'slug')
                        ->findOrFail($id);

            return view('bumdes.pemesanan', [
                'produk' => $produk,
                'min_order' => 1,
                'max_order' => 100 // Anda bisa menyesuaikan atau mengambil dari database
            ]);

        } catch (\Exception $e) {
            Log::error('Error accessing product: '.$e->getMessage());
            return redirect()->route('bumdes.index')
                ->with('error', 'Produk tidak ditemukan atau tidak tersedia');
        }
    }

    /**
     * Menyimpan data pemesanan
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_pemesan' => 'required|string|max:100',
            'no_hp' => 'required|numeric|digits_between:10,15',
            'alamat' => 'required|string|max:255',
            'jumlah' => 'required|integer|min:1|max:100',
            'bumdes_id' => 'required|exists:bumdes,id',
            'catatan' => 'nullable|string|max:500'
        ], [
            'no_hp.digits_between' => 'Nomor HP harus antara 10-15 digit',
            'jumlah.max' => 'Maksimal pemesanan 100 item'
        ]);

        try {
            // Tambahkan data tambahan
            $validated['kode_pesanan'] = 'BUMDES-' . time() . rand(100, 999);
            $validated['status'] = 'menunggu';

            $pesanan = PesananBumdes::create($validated);

            // Redirect dengan data pesanan untuk konfirmasi
            return redirect()->route('pembelian.confirmation', $pesanan->kode_pesanan)
                ->with('success', 'Pesanan berhasil dibuat!');

        } catch (\Exception $e) {
            Log::error('Order error: '.$e->getMessage());
            return back()->withInput()
                ->with('error', 'Terjadi kesalahan saat memproses pesanan. Silakan coba lagi.');
        }
    }

    /**
     * Menampilkan halaman konfirmasi pesanan
     */
    public function confirmation($kode_pesanan)
    {
        $pesanan = PesananBumdes::with('bumdes')
                    ->where('kode_pesanan', $kode_pesanan)
                    ->firstOrFail();

        return view('bumdes.konfirmasi', compact('pesanan'));
    }
}
