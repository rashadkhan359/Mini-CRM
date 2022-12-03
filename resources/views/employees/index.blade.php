@extends('layout')
@section('title', 'All Employees')
@section('content')
    <div class="card mb-4 mt-5">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Employees List
            <a href="{{ url('employees/create') }}" class="btn btn-sm btn-info float-end">Add New</a>
        </div>
        <div class="card-body">
            {{-- <div class="dataTable-search mt-4 mb-4">
                <form action="/">
                    <input class="dataTable-input" placeholder="Working Search..." type="text">
                </form>
            </div> --}}
            <table id="datatablesSimple">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Company</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Name</th>
                        <th>Company</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
                <tbody>
                    @if ($employees)
                        @foreach ($employees as $value)
                            <tr>
                                <td>{{ $value->firstname . ' ' . $value->lastname }}</td>
                                <td>{{ $value->company->name }}</td>
                                <td>{{ $value->email }}</td>
                                <td>{{ $value->phone }}</td>
                                <td>
                                    <a href="{{ url('employees/' . $value->id) }}" class="btn btn-info btn-sm">Show</a>
                                    <a href="{{ url('employees/' . $value->id . '/edit') }}"
                                        class="btn btn-warning btn-sm">Update</a>
                                    <a href="{{ url('employees/' . $value->id . '/delete') }}" class="btn btn-danger btn-sm"
                                        onclick="return confirm('Are you sure to delete this data?')">Delete</a>
                                </td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>
@endsection
