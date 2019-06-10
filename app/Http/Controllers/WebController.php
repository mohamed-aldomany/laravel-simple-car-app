<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
use App\User;
class WebController extends Controller
{
    public function Categories()
    {
        $categories = DB::table('category')
            ->select('category.*')
            ->get();
        return view('home')->with('categories',$categories);    
    }
    public function CategoryInc($cid)
    {
        $cycles = DB::table('cycles')
            ->join('category', 'category.id', '=', 'cycles.category_id')
            ->where('category.id', $cid)
            ->select('cycles.*')
            ->get();
        return view('pages.cycles')->with('cycles', $cycles);
    }
    public function AddCart(Request $request)
    {
        $user_id = Auth::user()->id;
        $cycle_id = $request->cid;


        $user_cycle = DB::table('users')
            ->join('user_cycle', 'users.id', '=', 'user_cycle.user_id')
            ->join('cycles', 'cycles.id', '=', 'user_cycle.cycle_id')
            ->where('users.id', $user_id)
            ->where('cycles.id', $cycle_id)
            ->select('cycles.id')
            ->get();

        $uca = array();
        foreach ($user_cycle as $uc) {
            array_push($uca, $uc->id);
        }

        if (in_array($cycle_id, $uca)) {
        }else{
            DB::table('user_cycle')->insert([
                ['user_id' => $user_id, 'cycle_id' => $cycle_id],
            ]);
        
        }
        return redirect('/cart');
    }

    public function MyCart()
    {
        $user_id = Auth::user()->id;

        $user_cycles = DB::table('users')
            ->join('user_cycle', 'users.id', '=', 'user_cycle.user_id')
            ->join('cycles', 'cycles.id', '=', 'user_cycle.cycle_id')
            ->where('users.id', $user_id)
            ->select('cycles.*')
            ->get();
        return view('pages.mycart')->with('user_cycles',$user_cycles);    

    }
    public function RemoveCart(Request $request)
    {
        $user_id = Auth::user()->id;
        $cycle_id = $request->cid;
        $user_cycles = DB::table('user_cycle')
            ->join( 'users', 'users.id', '=', 'user_cycle.user_id')
            ->join('cycles', 'cycles.id', '=', 'user_cycle.cycle_id')
            ->where('users.id', $user_id)
            ->where('cycles.id', $cycle_id)
            ->delete();

        return redirect('/cart');    
    }
    public function MyProfile()
    {
        $userid = Auth::user()->id;
        $user = User::findOrFail($userid);
        return view('pages.profile')->with('user',$user);
    }
    public function UpdateProfile(Request $request)
    {
        $userid = Auth::user()->id;
        $user = User::findOrFail($userid);
        $this->validate($request, [
            'name' => 'required|string|max:100|min:3',
            'email' => 'required|string|email|unique:users,email,'.$user->id,
            'phone' => 'nullable|max:11|min:11',
        ]);
        $user->update($request->all());
        return redirect('/profile');
    }
}
