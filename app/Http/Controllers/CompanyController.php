<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Employees;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class CompanyController extends Controller
{
    //Show all companies
    public function index(){
        $data = Company::orderBy('name', 'asc')->get();
        return view('/company/index', ['companies' => $data]);
    }

    public function show($id){
        $data = Company::find($id);
        return view('/company.show', ['data' => $data]);
    }

    public function create(){
        return view('company.create');
    }

    public function update(Request $request, $id){
        $data = Company::find($id);
        if($data->name != $request->name){
            $request->validate([
                'name'=>['required', Rule::unique('companies', 'name')]
            ]);
        }
        if($data->email != $request->email){
            $request->validate([
                'email'=>Rule::unique('companies', 'email')
            ]);
        }
        
        if($request->hasFile('logo')){
            $request->validate([
                'logo'=>'image|mimes:jpg,png,gif,jpeg'
            ]);
            $logo = $request->file('logo');
            $renameLogo = $request->name.'.'.$logo->getClientOriginalExtension();
            $destination = public_path('assets/company_logos');
            $logo->move($destination, $renameLogo);
        }else{
            $renameLogo = $request->prev_logo;
        }

        $data->name = $request->name;
        $data->email = $request->email;
        $data->logo = $renameLogo;
        $data->website = $request->website;
        $data->save();

        return redirect('company/'.$id.'/edit')->with('msg', 'Data has been updated successfully!');
    }

    public function edit($id){
        $data = Company::find($id);
        return view('company.edit', ['data' => $data]);
    }

    public function store(Request $request){
        $request->validate([
            'name'=>['required', Rule::unique('companies', 'name')],
            'email'=> Rule::unique('companies', 'email'),
            'logo'=>'image|mimes:jpg,png,gif,jpeg'
        ]);
       
        $logo = $request->file('logo');
        $renameLogo = $request->name.'.'.$logo->getClientOriginalExtension();
        $destination = public_path('assets/company_logos');
        $logo->move($destination, $renameLogo);

        $data = new Company();
        $data->name = $request->name;
        $data->email = $request->email;
        $data->logo = $renameLogo;
        $data->website = $request->website;
        $data->save();

        return redirect('company/create')->with('msg', 'New company details added successfully.');
    }

    public function destroy($id){
        Company::where('id', $id)->delete();
        return redirect('company')->with('msg', 'Record deleted successfully!');
    }
}
