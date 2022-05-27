@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12 mb-3">
        <img src="{{ url('images/logo1.png') }}" class="rounded mx-auto d-block"  width="400" alt="">
        </div>    
        @foreach($barangs as $barang)	
        <div class="col-md-4">
        <div class="card" style="width: 18rem;">
        <img src="{{ url('uploads') }}/{{ $barang->gambar }}" class="card-img-top" alt="gambar" >
            <div class="card-body bg-dark p-2 text-dark bg-opacity-10">
                <h5 class="card-title">{{ $barang->nama_barang }}</h5>
                    <p class="card-text">
                    <strong>Harga :</strong> Rp. {{ number_format($barang->harga) }} <br>
                    <strong>Stok :</strong> {{ $barang->stok }} <br>
                    <hr>
                    <strong>Keterangan :</strong> <br>
                    {{ $barang->keterangan }}
                    </p>
                    <center>
                    <a href="{{ url('catalog')}}/{{$barang->id}}" class="btn btn-primary" ><i class="fa fa-shopping-cart"></i> Order</a>
                    </center>
            </div>
        </div>
        </div>
        @endforeach

    </div>
</div>
@endsection