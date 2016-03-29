<?php defined('SYSPATH') or die('No direct access allowed');

return array
(
	'default' => array
	(
		'type' => 'mysqli',
		'connection' => array(
			'hostname' => 'localhost',
			'database' => 'users_registration',
			'username' => 'root',
			'password' => '',
			'persistent' => FALSE,
		),
		'table_prefix' => '',
		'charset' => 'utf8',
		'cashing' => FALSE,
		'profiling' => TRUE,
	),
);