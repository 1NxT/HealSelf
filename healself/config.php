<?php 
	session_start();
	$autoload = function($class){
		include('classes/'.$class.'.php');
	};

	spl_autoload_register($autoload);

	define('INCLUDE_PATH', 'http://localhost/healself/');
	define('HOST', 'localhost');
	define('DATABASE', 'projeto_paulo');
	define('USER', 'root');
	define('PASSWORD', '');


 ?>