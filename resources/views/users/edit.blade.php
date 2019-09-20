@extends('layouts.app')

@section('content')

    <div class="card">
        <div class="card-header">My profile</div>

        <div class="card-body">
            @include('patial.errors')
            <form action="{{ route('users.update-profile') }}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label for="name"></label>
                    <input type="text" name="name" class="form-control" id="name" value="{{$user->name}}">
                </div>
                <div class="form-group">
                    <label for="about"></label>
                    <textarea name="about" id="about" cols="5" rows="5" class="form-control">{{$user->about}}</textarea>
                </div>

                <button type="submit" class="btn btn-success">Update Profile</button>
            </form>

        </div>
    </div>
@endsection
