@extends('layout')
@section('title', 'All Companies')
@section('content')
<div class="card mb-4 mt-5">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Companies List
        <a href="{{ url('company/create') }}" class="btn btn-sm btn-info float-end">Add New</a>
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </tfoot>
            <tbody>
                @if($companies)
                    @foreach($companies as $value)
                <tr>
                    <td>{{ $value->name }}</td>
                    <td>{{ $value->email }}</td>
                    <td>
                        <a href="{{ url('company/'.$value->id) }}" class="btn btn-info btn-sm">Show</a>
                        <a href="{{ url('company/'.$value->id.'/edit') }}" class="btn btn-warning btn-sm">Update</a>
                        <a href="{{ url('company/'.$value->id.'/delete') }}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure to delete this data?')">Delete</a>
                    </td>
                </tr>
                    @endforeach
                @endif
            </tbody>
        </table>
    </div>
</div>
@endsection