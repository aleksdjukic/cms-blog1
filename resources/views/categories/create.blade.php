@extends('layouts.app')


@section('content')

    <div class="card card-default">

        <div class="card-header">
            {{ isset($category) ? 'Edit Category' : 'Create Category' }}
        </div>

        <div class="card-body">

            @include('patial.errors')

            <form action="{{ isset($category) ? route('categories.update', $category->id) : route('categories.store') }}" method="POST">
                @csrf
                @if(isset($category))
                @method('PUT')
                @endif
                <label for="name">Name</label>
                <input class="form-control" id="name" type="text" name="name" value="{{ isset($category) ? $category->name : "" }}">
                <button class="btn btn-success mt-2">{{isset($category) ? "Update Category" : "Create Category"}}</button>
            </form>
        </div>
    </div>

@endsection