<?php

Class User extends Db_object{

	protected static $db_table = "users";
	protected static $db_table_field = array('username', 'password', 'first_name', 'last_name', 'email');
	public $id;
	public $username;
	public $password;
	public $first_name;
	public $last_name;
	public $email;
	public $register;


	public static function verify_user($email, $password){

		global $database;

		$email = $database->escape_string($email);
		$password = $database->escape_string($password);

		$sql = "SELECT * FROM ".self::$db_table." WHERE ";
		$sql .= "email = '{$email}' ";
		$sql .= "AND password = '{$password}' ";
		$sql .= "LIMIT 1";

		$the_result_array = self::find_by_query($sql);

		return !empty($the_result_array) ? array_shift($the_result_array) : false;
	}



}



?>
