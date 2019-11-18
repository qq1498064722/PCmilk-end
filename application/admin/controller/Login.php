<?php
	
	
	namespace app\admin\controller;
	
	
	use think\Controller;
	use think\Db;
	use think\Request;
	use think\Session;
	
	class Login extends Controller
	{
		public function index(){
			$login=Db::table('login')->order('id','asc')->select();
			$this->assign('login',$login);
			return view('index');
		}
		public function check(){
			$method=$this->request->method();
			if($method!='POST'){
				return json(['code'=>404,'msg'=>'请求方式错误']);
			}
			$data = input('post.');
			if(!captcha_check($data['code'])){
				return json([
					'code'=>404,
					'msg'=>'验证码错误'
				]);
			}
			$username=$data['username'];
			$password=md5(crypt($data['password'],'dhskaf'));
			$result=Db::table('login') ->where(['username'=>$username,'password'=>$password])->find();
			if($result){
				Session::set('user',$result);
				return json([
					'code'=>200,
					'msg'=>'登录成功'
				]);
			}
			else{
				return json([
					'code'=>404,
					'msg'=>'登录失败'
				]);
			}
		}
	}