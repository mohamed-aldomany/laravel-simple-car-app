@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="text-center">Your Cart</h1>
    <div class="row">
        @foreach ($user_cycles as $cycle)
            <div class="col-md-4">
                <div class="card mb-5" style="width: 18rem;">
                    <img src="/img/{{$cycle->name}}.jpg" class="card-img-top" alt="..." style="height:216px;">
                    <div class="card-body">
                        <h5 class="card-title">car name :{{$cycle->name}}</h5>
                        <p class="card-text">price : {{$cycle->price}}</p>
                        <p class="card-text">color : {{$cycle->color}}</p>
                        <p class="card-text">brand : {{$cycle->type}}</p>
                        <p>{{$cycle->created_at}}</p>
                        <form action="/cycle/remove_cart" method="POST">
                            {{ csrf_field() }}
                            <input type="hidden" value="{{$cycle->id}}" name="cid">
                            <button type="submit" name="submit" class="btn btn-outline-danger">Remove From Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection