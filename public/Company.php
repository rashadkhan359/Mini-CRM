<?php 

namespace App\Models;

class Company {
    public static function all() {
        return  [
            [
                'id' => 1,
                'name' => 'Facebook',
                'logo' => 'wwqwwds.com',
                'website' => 'www.facebook.com'
            ],
            [
                'id' => 2,
                'name' => 'Google',
                'logo' => 'wwqwwds.com',
                'website' => 'www.google.com'
            ],
            [
                'id' => 3,
                'name' => 'Netflix',
                'logo' => 'wwqwwds.com',
                'website' => 'www.netflix.com'
            ],
            [
                'id' => 4,
                'name' => 'Quantum',
                'logo' => 'wwqwwds.com',
                'website' => 'www.quantum.com'
            ],
        ];
    }

    public static function find($id){
        $companies = self::all();

        foreach($companies as $company){
            if($company['id'] == $id){
                return $company;
            }
        }
    }
}