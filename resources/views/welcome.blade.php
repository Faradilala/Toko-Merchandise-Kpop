@extends('layouts.app')

@section('content')
    <div>
        <!-- Authentication Links -->
        <body class="antialiased">
            <div class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center py-4 sm:pt-0">
                @if (Route::has('login'))
                    <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                        @auth
                        @endauth
                    </div>
                @endif
            </div>
        </body>
        <div class="col-md-12 mb-3">
            <img src="{{ url('images/logo1.png') }}" class="rounded mx-auto d-block"  width="600" alt="">
        </div> 
    </div>
@endsection
