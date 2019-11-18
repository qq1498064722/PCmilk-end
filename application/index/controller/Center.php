<?php
	
	
	namespace app\index\controller;
	
	
	use think\Db;
	
	class Center extends Bace
	{
		public function center(){
			$id=$this->request->get('gid');
			$currentgoods=Db::table('goods')->where('gid',$id)->find();
			$this->assign('cid',$currentgoods['cid']);
			return $this->fetch();
		}
	}