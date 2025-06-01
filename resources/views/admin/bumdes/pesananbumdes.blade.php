@extends('admin.layouts.main')

@section('content')
<div class="container-fluid">
    <h1 class="h3 mb-4">Daftar Pesanan BUMDes</h1>

    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Produk</th>
                            <th>Pemesan</th>
                            <th>Kontak</th>
                            <th>Jumlah</th>
                            <th>Status</th>
                            <th>Tanggal</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($pesanan as $item)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $item->bumdes->produk }}</td>
                            <td>{{ $item->nama_pemesan }}</td>
                            <td>{{ $item->no_hp }}</td>
                            <td>{{ $item->jumlah }}</td>
                            <td>
                                <span class="badge
                                    @if($item->status == 'selesai') bg-success
                                    @elseif($item->status == 'diproses') bg-warning
                                    @else bg-secondary @endif">
                                    {{ $item->status }}
                                </span>
                            </td>
                            <td>{{ $item->created_at->format('d/m/Y') }}</td>
                            <td>
                                <a href="{{ route('admin.pesanan.edit', $item->id) }}" class="btn btn-sm btn-primary">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <form action="{{ route('admin.pesanan.destroy', $item->id) }}" method="POST" class="d-inline">
                                    @csrf @method('DELETE')
                                    <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Hapus pesanan?')">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
