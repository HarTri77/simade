@extends('layouts.main')

@section('content')
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow">
                <div class="card-header bg-primary text-white">
                    <h4>Form Pemesanan {{ $produk->produk }}</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('pembelian.store') }}" method="POST">
                        @csrf
                        <input type="hidden" name="bumdes_id" value="{{ $produk->id }}">

                        <div class="mb-3">
                            <label class="form-label">Nama Lengkap</label>
                            <input type="text" name="nama_pemesan" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">No. WhatsApp</label>
                            <input type="number" name="no_hp" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Alamat Lengkap</label>
                            <textarea name="alamat" class="form-control" rows="3" required></textarea>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Jumlah Pesan</label>
                            <input type="number" name="jumlah" class="form-control" min="1" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Catatan (Opsional)</label>
                            <textarea name="catatan" class="form-control" rows="2"></textarea>
                        </div>

                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">Kirim Pesanan</button>
                            <a href="{{ route('bumdes.show', $produk->slug) }}" class="btn btn-secondary">Kembali</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
