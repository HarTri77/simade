@extends('layouts.main')

@section('content')
<section class="counts section-bg">
    <div class="container">
        <div class="section-title">
            <h2>BUMDES</h2>
        </div>
        <div class="row">
            @foreach ($bumdes as $bumdes)
            <div class="col-lg-4 col-md-6 mb-3" data-aos="fade-up">
                <div class="count-box news-card">
                    <div class="card">
                        <img src="{{ asset('storage/' . $bumdes->foto) }}" alt="Foto UMKM" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title"><b>{{ $bumdes->produk }}</b></h5>
                            <p class="card-text"><i class="bi bi-tag"></i>&nbsp; Rp {{ number_format($bumdes->harga, 0, ',', '.') }}</p>
                        </div>
                        <a class="btn btn-success mx-3 my-1" href="https://wa.me/+62{{ $bumdes->no_hp }}" role="button"><i class="bi bi-whatsapp"></i>&nbsp; Hubungi Penjual</a>
                        <a class="btn btn-warning mx-3 mb-3" href="/umkm/{{ $bumdes->slug }}" role="button"><i class="bi bi-eye"></i>&nbsp; Detail Produk</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>

        <div class="paginate my-3" style="text-align: center">
            {{ $bumdes->links() }}
        </div>
    </div>
</section>
@endsection
