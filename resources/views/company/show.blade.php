@extends('layout')
@section('icon', '/assets/company_logos/'.$data->logo)
@section('title', $data->name)
@section('content')

<div class="card mb-4 mt-5">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        View Company
        <a href="{{ url('/company') }}" class="btn btn-sm btn-success float-end">View All</a>
    </div>
    <div class="card-body">   
        <table class="table">
            <tr>
                <th>Name</th>
                <td>
                    {{ $data->name }}
                </td>
            </tr>
            <tr>
                <th>Email</th>
                <td>
                    {{ $data->email }}
                </td>
            </tr>
            <tr>
                <th>Logo</th>
                <td>
                    <img src="{{ '/assets/company_logos/'.$data->logo }}" alt="{{ $data->name }}" width="200" height="200" />
                </td>
            </tr>
            <tr>
                <th>Website</th>
                <td>
                    {{ $data->website }}
                </td>
            </tr>
        </table>
    </div>
</div>
@endsection