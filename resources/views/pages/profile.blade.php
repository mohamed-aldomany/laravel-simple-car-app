@extends('layouts.app')

@section('content')

<div class="container">
    <h1 class="text-center">My Profile</h1>
    <form action="/update_profile" method="POST">
        {{ csrf_field() }}
        <div class="form-group">
            <label for="exampleInputPassword1">name</label>
            <input name="name" type="text" value="{{$user->name}}" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" placeholder="name">
            @if ($errors->has('name'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('name') }}</strong>
                </span>
            @endif
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input name="email" type="email" value="{{$user->email}}" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" placeholder="Enter email">
            @if ($errors->has('email'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">phone</label>
            <input name="phone" type="number" value="{{$user->phone}}" class="form-control{{ $errors->has('phone') ? ' is-invalid' : '' }}" placeholder="phone">
            @if ($errors->has('phone'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('phone') }}</strong>
                </span>
            @endif
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection