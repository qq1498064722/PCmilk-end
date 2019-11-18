<?php
	
	
	namespace app\admin\validate;
	
	
	use think\Validate;
	
	class Nav extends Validate
	{
		protected $rule=[
			'nname'=>'require',
			'ename'=>'require',
			'sort'=>'number',
			'ntpl'=>'require',
			'id'=>'number',
			'field'=>'require',
			'value'=>'require',
		];
		protected $scene=[
		'insert'=>['nname','ename','sort','ntpl'],
		'delete'=>['id'],
			'update'=> ['id','field','value']
		];
		
		
	}