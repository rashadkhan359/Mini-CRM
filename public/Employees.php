<?php 

namespace App\Models;

class Employees {
    public static function all() {
        return  [
            [
            'id' => 1,
            'firstname' => 'Rashad',
            'lastname' => 'Khan',
            'Company' => 'Facebook',
            'email' => 'rashd@gmail.com',
            'phone' => '7849018401'
            ],
            [
            'id' => 2,
            'firstname' => 'Shallyn',
            'lastname' => 'Cherian',
            'Company' => 'Facebook',
            'email' => 'shallu@gmail.com',
            'phone' => '7849018401'
            ],
            [
            'id' => 3,
            'firstname' => 'Mahvish',
            'lastname' => 'Ashfaque',
            'Company' => 'Facebook',
            'email' => 'mahi@gmail.com',
            'phone' => '7849018401'
            
            ],

        ];
    }
}