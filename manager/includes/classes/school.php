<?php

Class School extends Db_object{

	protected static $db_table = "schools";
	protected static $db_table_field = array('cat', 'name', 'region', 'district', 'location', 'gender', 'latitude', 'longitude', 'description',
	'gart', 'gsci', 'agric', 'hecons', 'vart', 'bus', 'tech', 'status');
	public $id;
	public $cat;
	public $name;
	public $region;
	public $district;
	public $location;
	public $gender;
	public $gart;
	public $gsci;
	public $agric;
	public $hecons;
	public $vart;
	public $bus;
	public $tech;
	public $status;






}



?>
