@extends('layouts.app')


@section('content')

    <div class="card card-default">

        <div class="card-header">
            {{ isset($tag) ? 'Edit tag' : 'Create tag' }}
        </div>

        <div class="card-body">

            @include('patial.errors')

            <form action="{{ isset($tag) ? route('tags.update', $tag->id) : route('tags.store') }}" method="POST">
                @csrf
                @if(isset($tag))
                    @method('PUT')
                @endif
                <label for="name">Name</label>
                <input class="form-control" id="name" type="text" name="name" value="{{ isset($tag) ? $tag->name : "" }}">
                <button class="btn btn-success mt-2">{{isset($tag) ? "Update tag" : "Create tag"}}</button>
            </form>
        </div>
    </div>

@endsection