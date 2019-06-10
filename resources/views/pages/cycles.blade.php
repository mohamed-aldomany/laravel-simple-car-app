@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="text-center mb-5">Choose Your Item</h1>
    <div class="row">
        @foreach ($cycles as $cycle)
            <div class="col-md-4">
                <div class="card mb-5" style="width: 18rem;">
                    <img src="/img/{{$cycle->name}}.jpg" class="card-img-top" alt="..." style="height:216px;">
                    <div class="card-body">
                        <h5 class="card-title">name :{{$cycle->name}}</h5>
                        <p class="card-text">price : {{$cycle->price}}000$</p>
                        <p class="card-text">color : {{$cycle->color}}</p>
                        <p class="card-text">brand : {{$cycle->type}}</p>
                        <p>{{$cycle->created_at}}</p>
                        <form action="/cycle/add_cart" method="POST">
                            {{ csrf_field() }}
                            <input type="hidden" value="{{$cycle->id}}" name="cid">
                            <input type="hidden" value="{{$cycle->category_id}}" name="catid">
                            <button type="submit" name="submit" class="btn btn-outline-success">Add To Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
