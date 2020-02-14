<?php

Class Career extends Db_object{

	protected static $db_table = "career";
	protected static $db_table_field = array('school', 'programme', 'description', 'careers');
	public $id;
	public $school;
	public $programme;
	public $description;
	public $careers;







}



?>
