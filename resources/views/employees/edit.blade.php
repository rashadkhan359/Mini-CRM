@extends('layout')
@section('title', 'Update Employee')
@section('content')
<div class="card mb-4 mt-5">
    <div class="card-header">
        <i class="fas fa-user me-1"></i>
        Update Employee
        <a href="{{ url('/employees') }}" class="btn btn-sm btn-success float-end">View All</a>
    </div>
    <div class="card-body">
        @if($errors->any())
            @foreach($errors->all() as $error)
            <p class="text-danger"> {{ $error }} </p>
            @endforeach
        @endif   
        @if(Session::has('msg'))
        <p class="text-success">{{ session('msg') }}</p>
        @endif
        <form method="post" action="{{ url('employees/'.$data->id) }}">
            @method('put')
            @csrf
            <table class="table">
            <tr>
                <th>First Name</th>
                <td>
                    <input type="text" name="firstname" value="{{ $data->firstname }}" class="form-control"/>
                </td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td>
                    <input type="text" name="lastname" value="{{ $data->lastname }}" class="form-control"/>
                </td>
            </tr>
            <tr>
                <th>Company</th>
                <td>
                    <select name="company" class="form-control">
                        <option value="">-- Select Company -- </option>
                        @foreach($companies as $company)
                            <option @if($company->id == $data->company_id) selected @endif value="{{ $company->id }}">{{ $company->name }}</option>
                        @endforeach
                    </select>
                </td>
            </tr>
            <tr>
                <th>Email</th>
                <td>
                    <input type="email" name="email" value="{{ $data->email }}" placeholder="abc@xyz.com" class="form-control"/>
                </td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>
                    <input type="text" name="phone" value="{{ $data->phone }}" placeholder="+91xxxxxxxxxx" class="form-control"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="submit" value="Submit" class="btn btn-primary"/>
                </td>
            </tr>
        </table>
        </form>
    </div>
</div>
@endsection