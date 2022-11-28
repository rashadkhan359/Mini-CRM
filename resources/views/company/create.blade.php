@extends('layout')
@section('title', 'Add Company')
@section('content')
<div class="card mb-4 mt-5">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Add New Company
        <a href="{{ url('/company') }}" class="btn btn-sm btn-success float-end">View All</a>
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
        <form method="post" action="{{ url('company') }}" enctype="multipart/form-data">
        @csrf
            <table class="table">
            <tr>
                <th>Name</th>
                <td>
                    <input type="text" name="name" placeholder="Company Name" class="form-control"/>
                </td>
            </tr>
            <tr>
                <th>Email</th>
                <td>
                    <input type="email" name="email" placeholder="abc@xyz.com" class="form-control"/>
                </td>
            </tr>
            <tr>
                <th>Logo</th>
                <td>
                    <input type="file" name="logo"  class="form-control"/>
                </td>
            </tr>
            <tr>
                <th>Website</th>
                <td>
                    <input type="url" name="website" placeholder="www.xyz.com" class="form-control"/>
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