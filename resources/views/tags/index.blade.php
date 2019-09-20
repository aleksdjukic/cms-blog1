@extends('layouts.app')


@section('content')
    <div class="d-flex justify-content-end">
        <a href="{{ route('tags.create') }}" class="btn btn-success mb-2 ">Add Tag</a>
    </div>
    <div class="card card-default">
        <div class="card-header">
            tags
        </div>
        <div class="card-body">

            @if($tags->count() > 0)

                <table class="table">
                    <thead>
                    <th>Name</th>
                    <th class="text-center">Posts Count</th>
                    <th></th>
                    </thead>
                    <tbody>
                    @foreach($tags as $tag)
                        <tr>
                            <td>{{$tag->name}}</td>
                            {{--<td class="">{{$Tag->posts->count()}}</td>--}}
                            <td class="text-center">
                                {{$tag->posts->count()}}
                            </td>
                            <td>
                                <a class="btn btn-info btn-sm" href="{{route('tags.edit', $tag->id)}}">Edit</a>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" onclick="handleDelete({{ $tag->id }})" data-target="#deleteModal">
                                    Delete
                                </button>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            @else

                <h3 class="text-center">No tags</h3>

            @endif

            <form action="" method="POST" id="deleteTagForm">
            @method('DELETE')
            @csrf
            <!-- Modal -->
                <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="deleteModalLabel">Delete Tag</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Are you sure?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">No, go back</button>
                                <button type="submit" class="btn btn-danger">Yes, delete</button>
                            </div>
                        </div>
                    </div>
                </div>

            </form>


        </div>
    </div>

@endsection

@section('scripts')

    <script>
        function handleDelete(id) {
            var form = document.getElementById('deleteTagForm')
            form.action = '/tags/' + id
            $('#deleteModal').modal('show')
        }
    </script>
@endsection