@extends('layout')
@section('title', 'Employees')
@section('content')
<div class="card mb-4 mt-5">
    @unless (count($employees) == 0)
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            {{ $employees[0]->company->name }}'s Employees List
            <a href="{{ url('employees/create') }}" class="btn btn-sm btn-info float-end">Add New</a>
        </div>
        <div class="card-body">
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
                    @if($employees)
                        @foreach($employees as $value)
                    <tr>
                        <td>{{ $value->firstname." ".$value->lastname }}</td>
                        <td>{{ $value->company->name }}</td>
                        <td>{{ $value->email }}</td>
                        <td>{{ $value->phone }}</td>
                        <td>
                            <a href="{{ url('employees/'.$value->id) }}" class="btn btn-info btn-sm">Show</a>
                            <a href="{{ url('employees/'.$value->id.'/edit') }}" class="btn btn-warning btn-sm">Update</a>
                            <a href="{{ url('employees/'.$value->id.'/delete') }}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure to delete this data?')">Delete</a>
                        </td>
                    </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    @else
        <p>No employee registered in this company!</p>
    @endunless
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('public/js/scripts.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="{{ asset('public/js/datatables-simple-demo.js') }}"></script>
@endsection