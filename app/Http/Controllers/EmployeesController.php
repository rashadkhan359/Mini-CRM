<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Employees;
use Illuminate\Http\Request;

class EmployeesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Employees::orderBy('firstname', 'asc')->get();
        return view('employees/index', ['employees' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = Company::orderBy('name', 'asc')->get();
        return view('employees.create', ['companies' => $data]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'firstname'=>'required',
            'lastname' => 'required'
        ]);
        $data = new Employees();
        $data->firstname = $request->firstname;
        $data->lastname = $request->lastname;
        $data->company_id = $request->company;
        $data->email = $request->email;
        $data->phone = $request->phone;
        $data->save();

        return redirect('employees/create')->with('msg', 'New employee added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Employees::find($id);
        return view('employees.show', ['data' => $data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $company = Company::orderBy('name', 'asc')->get();
        $data = Employees::find($id);
        return view('employees.edit', ['companies' => $company, 'data'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'firstname'=>'required',
            'lastname'=>'required'
        ]);

        $data = Employees::find($id);
        $data->firstname = $request->firstname;
        $data->lastname = $request->lastname;
        $data->company_id = $request->company;
        $data->email = $request->email;
        $data->phone = $request->phone;
        $data->save();

        return redirect('employees/'.$id.'/edit')->with('msg', 'Data has been updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Employees::where('id', $id)->delete();
        return redirect('employees')->with('msg', 'Record deleted successfully!');
    }

    public function sub_employees($id){
        $data = Employees::orderBy('firstname', 'asc')->filter($id)->get();
        return view('/employees/empview', ['employees' => $data]);
    }
}
