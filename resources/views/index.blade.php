@extends('layout')
@section('title', 'Dashboard')
@section('content')
<div class="card mb-4 mt-5">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Companies
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                    <th>Logo</th>
                    <th>Name</th>
                    <th>Employees</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>Logo</th>
                    <th>Name</th>
                    <th>Employees</th>
                </tr>
            </tfoot>
            <tbody>
                @if($companies)
                    @foreach($companies as $value)
                <tr>
                    <td><img src="{{ '/assets/company_logos/'.$value->logo }}" alt="{{ $value->name }}" width="70" height="70" /></td>
                    <td>{{ $value->name }}</td>
                    <td>
                        <a href="{{ url('employees/'.$value->id.'/view') }}" class="btn btn-info btn-sm float-center">View</a>
                    </td>
                </tr>
                    @endforeach
                @endif
            </tbody>
        </table>
    </div>
</div>
@endsection