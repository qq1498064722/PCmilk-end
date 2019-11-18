<?php
	
	
	namespace app\index\controller;
	
	
	use think\Console;
	use think\Db;
	
	class Cate extends Bace
	{
		public function index(){
			$id=$this->request->get('cid');
			$currentnav=Db::table('nav')->where('id',$id)->find();
			$tpl=$currentnav['ntpl'];
			$this->assign('cid',$currentnav['id']);
			$this->assign('title',$currentnav['nname']);
			$this->assign('ename',$currentnav['ename']);
			
			$news=Db::table('news')->select();
			$this->assign('news',$news);
			$nid=$this->request->get('id');
			$currentnews=Db::table('news')->where('id',$nid)->find();
			switch ($tpl){
				case 'center':
					$cate = [['cid'=>0,'cname'=>'全部']];
					$cate1 = Db::table('cate')->select();
					$cate = array_merge($cate,$cate1);
					$all = Db::table('goods')->select();
					$len = count($cate);
					for($i=0;$i<$len;$i++){
						$items = $cate[$i];
						$id = $items['cid'];
						if($i == 0){
							$cate[$i]['goods'] = $all;
							continue;
						}
						$cate[$i]['goods'] = array_filter($all,function($v) use($id){
							return  $v['cid'] == $id;
						});
					}
					$this->assign('cate',$cate);
					
					break;
				case 'aboutus':
				
				break;
				
				case 'xinwenzixun':
					$news=Db::table('news')->select();
					$this->assign('news',$news);
					$nid=$this->request->get('id');
					$currentnews=Db::table('news')->where('id',$nid)->find();
					break;
					
					
				case 'zaixianyuyue':
					
					break;
					
				
			}
			return $this->fetch($tpl);
		}
		
		
		public function item(){
			$goods=Db::table('goods')->select();
			$this->assign('goods',$goods);
//			$id=$this->request->get('cid');

			$gid=$this->request->get('gid');
			$currentnav=Db::table('nav')->where('id',$gid)->find();
			$tpl=$currentnav['ntpl'];
			$this->assign('cid',$currentnav['id']);
			$this->assign('title',$currentnav['nname']);
			$this->assign('ename',$currentnav['ename']);
			
			
			$currentgoods=Db::table('goods')->where('gid',$gid)->find();
			$this->assign('gid',$gid);
			$this->assign('gname',$currentgoods['gname']);
			$this->assign('gprice',$currentgoods['gprice']);
			$this->assign('sale',$currentgoods['sale']);
			$this->assign('stock',$currentgoods['stock']);
			$this->assign('detail',$currentgoods['detail']);
			$all=explode(',',$currentgoods['banner']);
//			$this->assign('currentgoods',$currentgoods);
			$this->assign('all',$all);
			
			
			$up=Db::table('goods')->where('gid','<',$gid)->order('gid','desc')->limit(0,1)->find();
			$down=Db::table('goods')->where('gid','>',$gid)->order('gid','asc')->limit(0,1)->find();
			
			$this->assign('up',$up);
			$this->assign('down',$down);
			return $this->fetch();
		}
		
		public function news(){
			$news=Db::table('news')->select();
			$this->assign('news',$news);
//			$id=$this->request->get('cid');
			
			$gid=$this->request->get('id');
			$currentnav=Db::table('nav')->where('id',$gid)->find();
			$tpl=$currentnav['ntpl'];
			$this->assign('cid',$currentnav['id']);
			$this->assign('title',$currentnav['nname']);
			$this->assign('ename',$currentnav['ename']);
			
			
			$currentgoods=Db::table('news')->where('id',$gid)->find();
			$this->assign('gid',$gid);
			$this->assign('type',$currentgoods['type']);
			
			$up=Db::table('news')->where('id','<',$gid)->order('id','desc')->limit(0,1)->find();
			$down=Db::table('news')->where('id','>',$gid)->order('id','asc')->limit(0,1)->find();
			
			$this->assign('up',$up);
			$this->assign('down',$down);
			return $this->fetch();
		}
		public function zaixianyuyue(){
			
			$news=Db::table('online')->select();
			$this->assign('online',$news);
			$id=$this->request->get('id');
			
			$method=$this->request->method();
			if($method!='POST'){
				return json(['code'=>404,'msg'=>'请求方式错误']);
			}
			$data=input('post.');
			$result=Db::table('online') ->insert($data);
			if($result>0){
				return json(['code'=>200,'msg'=>'数据插入成功']);
			}
			else{
				return json(['code'=>404,'msg'=>'数据插入失败']);
			}
			
			return $this->fetch();
		}
	}