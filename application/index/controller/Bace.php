<?php
	
	
	namespace app\index\controller;
	
	
	use think\Controller;
	use think\Db;
	
	class Bace extends Controller
	{
		public function _initialize()
		{
			parent::_initialize(); // TODO: Change the autogenerated stub
			$nav=Db::table('nav')->order('sort','asc')->select();
			$title=Db::table('nav')->where('nname')->select();
			$this->assign('nav',$nav);
			$this->assign('title',$title);
			
			
		}
		
	}