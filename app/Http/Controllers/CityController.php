<?php

namespace App\Http\Controllers;

use App\Models\City;
use Illuminate\Http\Request;

class CityController extends Controller
{
    public function index()
    {
        $data = City::orderBy('city', 'asc')->get();
        return view('distance', ['data' => $data]);
    }

    public function calculate(Request $request)
    {
        $request->validate([
            'city1' => 'required',
            'city2' => 'required',
            'mode' => 'required',
        ]);

        $city1data = explode(',', $request->city1);
        $city2data = explode(',', $request->city2);

        if ($request->mode == 'aerial') {
            //Using Internet Copied Algorithm
            $distance = self::distance($city1data[0], $city1data[1], $city2data[0], $city2data[1], 'K');

            return redirect('/distance')->with('msg', 'The aerial distance between ' . $city1data[2] . ' and ' . $city2data[2] . ' is around ' . $distance . ' Kms');
        }else {
            //Using radar API
            $opts = array(
                'http' => array(
                    'method' => "GET",
                    'header' => "Authorization: prj_test_pk_e896cf57dfb13b60f53388c13bdd9ca69c710680"
                )
            );

            $context = stream_context_create($opts);
            $makeurl = 'https://api.radar.io/v1/route/distance?origin=' .$city1data[0] . ',' . $city1data[1] . '&destination=' . $city2data[0] . ',' . $city2data[1] . '&modes=car&units=metric';
            // Open the file using the HTTP headers set above
            $distance_data = file_get_contents($makeurl, false, $context);
            $distance_arr = json_decode($distance_data, true);
            $distance_text = $distance_arr['routes']['car']['distance']['text'];
            $duration_text = $distance_arr['routes']['car']['duration']['text'];

            return redirect('/distance')->with('msg', 'The distance between ' . $city1data[2] . ' and ' . $city2data[2] . ' is around ' . $distance_text . ' and journey duration is '. $duration_text . ' by '.$request->mode .'.');
        }
    }

    public function distance($lat1, $lon1, $lat2, $lon2, $unit)
    {
        if ($lat1 == $lat2 && $lon1 == $lon2) {
            return 0;
        } else {
            $theta = $lon1 - $lon2;
            $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) + cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
            $dist = acos($dist);
            $dist = rad2deg($dist);
            $miles = $dist * 60 * 1.1515;
            $unit = strtoupper($unit);
        }

        if ($unit == 'K') {
            $dist = round($miles * 1.609344, 2);
            return $dist;
        } elseif ($unit == 'N') {
            return $miles * 0.8684;
        } else {
            return $miles;
        }
    }
}
