<?php
	
	
	namespace app\admin\validate;
	
	
	use think\Validate;
	
	class Goods extends Validate
	{
		protected $rule=[
			'gname'=>'require',
			'grice'=>'number',
			'sale'=>'number',
			'stock'=>'number',
			'detail'=>'require',
			'thumb'=>'require',
			'banner'=>'require',
//			'create_time'=>'require',
			'cid'=>'number',
			'id'=>'number',
			'field'=>'require',
			'value'=>'require',
		];
		protected $scene=[
			'insert'=>['gname','gprice','sale','stock','detail','thumb','banner'],
			'delete'=>['id'],
			'update'=> ['id','field','value']
		];
	}