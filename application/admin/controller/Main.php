<?php
	
	
	namespace app\admin\controller;
	
	
	use think\Controller;
	use think\Db;
	use think\Session;
	
	class Main extends Controller
	{
		public function index(){
			$user=Session::get('user');
			return view('index',['user'=>$user]);
		}
	}