@extends('layout')
@section('title', $data->firstname)
@section('content')
<div class="card mb-4 mt-5">
    <div class="card-header">
        <i class="fas fa-user me-1"></i>
        Employee Detail
        <a href="{{ url('employees') }}" class="btn btn-sm btn-success float-end">View All</a>
    </div>
    <div class="card-body">   
        <table class="table">
            <tr>
                <th>First Name</th>
                <td>
                    {{ $data->firstname }}
                </td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td>
                    {{ $data->lastname }}
                </td>
            </tr>
            <tr>
                <th>Company</th>
                <td>
                    {{ $data->company->name }}
                </td>
            </tr>
            <tr>
                <th>Email</th>
                <td>
                    {{ $data->email }}
                </td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>
                    {{ $data->phone }}
                </td>
            </tr>
        </table>
    </div>
</div>
@endsection