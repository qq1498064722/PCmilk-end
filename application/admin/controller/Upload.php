<?php
	
	
	namespace app\admin\controller;
	
	
	class Upload
	{
		public function index(){
			$file = request()->file('file');
// 移动到框架应用根目录/public/uploads/ 目录下
			if($file){
				$info = $file->validate(['size'=>200*1024,'ext'=>'png,jpg,jpeg,gif,webp'])
					->move(ROOT_PATH . 'public' . DS . 'uploads');
			
			
			$src=UPLOAD_PATH.$info->getSaveName();
			if($info){
// 成功上传后 获取上传信息
// 输出 jpg
			
				return json([
					'code'=>0,
					'msg'=>'上传成功',
					'data'=>[
						'src'=>$src
					]
				]);
				
			}else{
				return json([
					'code'=>1,
					'msg'=>'上传失败',
					'data'=> $file->getError()
				]);
// 上传失败获取错误信息
			}
			
		}
	}
	}