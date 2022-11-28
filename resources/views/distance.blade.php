@extends('layout')
@section('title', 'Distance Calculator')
@section('content')
    <div class="card mb-4 mt-5">
        <div class="card-header">
            <i class="fas fa-user me-1"></i>
            Distance Calculator
        </div>
        <div class="card-body">
            @if ($errors->any())
                @foreach ($errors->all() as $error)
                    <p class="text-danger"> {{ $error }} </p>
                @endforeach
            @endif
            <form method="get" action="{{ url('/distanceprocess') }}">
                @csrf
                <table class="table">
                    <tr>
                        <th>Select First City</th>
                        <td>
                            <select name="city1" class="form-control">
                                <option value="">-- Select City -- </option>
                                @foreach ($data as $city)
                                    <option value="{{ $city->latitude . ',' . $city->longitude.','.$city->City }}">{{ $city->City }}
                                    </option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Select Second City</th>
                        <td>
                            <select name="city2" class="form-control">
                                <option value="">-- Select City -- </option>
                                @foreach ($data as $city)
                                    <option value="{{ $city->latitude . ',' . $city->longitude.','.$city->City }}">{{ $city->City }}
                                    </option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Mode</th>
                        <td>
                            <select name="mode" class="form-control">
                                <option value="">-- Select Mode -- </option>
                                <option value="aerial">Aerial</option>
                                <option value="car">Car</option>
                                <option value="foot">Foot</option>    
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" name="submit" value="Submit" class="btn btn-primary" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <p>
                            @if (Session::has('msg'))
                                <p class="text-success">{{ session('msg') }}</p>
                            @endif
                            </p>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>


@endsection
