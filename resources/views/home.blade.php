@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="text-center mb-5">Categories Page</h1>
    <div class="row">
        @foreach ($categories as $cat)
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="/img/{{$cat->name}}.jpg" class="card-img-top" alt="..." style="height:216px;">
                    <div class="card-body">
                        <h5 class="card-title">{{$cat->name}}</h5>
                        <p class="card-text">{{$cat->description}}</p>
                        <p>{{$cat->created_at}}</p>
                        <a href="/category/{{$cat->id}}" class="btn btn-outline-primary">Show {{$cat->name}}</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
