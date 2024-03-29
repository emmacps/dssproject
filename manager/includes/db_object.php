<?php

class Db_object {

	public static function find_all(){

		return static::find_by_query("SELECT * FROM ".static::$db_table." ");
	}


	public static function find_by_id($user_id){

		global $database;

		$the_result_array = static::find_by_query("SELECT * FROM ".static::$db_table." WHERE id = $user_id LIMIT 1");

		return !empty($the_result_array) ? array_shift($the_result_array) : false;

		//return $found_user;
	}

	public static function find_by_query($sql){

		global $database;

		$result_set = $database->query($sql);
		$the_object_array = array();

		while($row = mysqli_fetch_array($result_set)){
			$the_object_array[] = static::instantation($row);
		}
		return $the_object_array;
	}


		public static function instantation($the_record){

		$calling_class = get_called_class();

		$the_object = new $calling_class;

        foreach ($the_record as $the_attribute => $value) {
        	# code...
        	if($the_object->has_the_attribute($the_attribute)){
        		$the_object->$the_attribute = $value;
        	}
        }

        return $the_object;
	}


		private function has_the_attribute($the_attribute){

		$object_properties = get_object_vars($this);

		return array_key_exists($the_attribute, $object_properties);
	}


	protected function properties(){

		$properties = array();

		foreach (static::$db_table_field as $db_field) {
			if(property_exists($this, $db_field)){

				$properties[$db_field] = $this->$db_field;
			}
		}

		return $properties;
	}


	protected function clean_properties(){
		global $database;

		$clean_properties = array();

		foreach ($this->properties() as $key => $value) {
			$clean_properties[$key] = $database->escape_string($value);
		}

		return $clean_properties;
	}


	public function save(){

		return isset($this->id) ? $this->update() : $this->create();
	}


	public function create(){

		global $database;

		$properties = $this->clean_properties();

		$sql = "INSERT INTO " . static::$db_table . "(" . implode(",", array_keys($properties)) . ")";
		$sql .= "VALUES ('" . implode("','", array_values($properties)) ."')";

		if($database->query($sql)){

			$this->id = $database->the_insert_id();

			return true;

		}else{

			return false;

		}


	}


	public function update(){

		global $database;

		$properties = $this->clean_properties();

		$properties_pairs = array();

		foreach ($properties as $key => $value) {
			$properties_pairs[] = "{$key}='{$value}'";
		}

		$sql = "UPDATE " .static::$db_table. " SET ";
		$sql .= implode(", ", $properties_pairs);
		$sql .= " WHERE id = " . $database->escape_string($this->id);

		$database->query($sql);

		return (mysqli_affected_rows($database->connection) == 1) ? true : false;


	}


	public function delete(){

		global $database;

		$sql = "DELETE FROM " .static::$db_table. " ";
		$sql .= "WHERE id = " . $database->escape_string($this->id);
		$sql .= " LIMIT 1";

		$database->query($sql);

		return (mysqli_affected_rows($database->connection) == 1) ? true : false;
	}


	//count function
	public static function count_all(){

	global $database;

	$sql = "SELECT COUNT(*) FROM " . static::$db_table;
	$result_set = $database->query($sql);
	$row = mysqli_fetch_array($result_set);

	return array_shift($row);
}

//count by Category A
public static function count_catA(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE cat = 'Category A' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by Category A
public static function count_catB(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE cat = 'Category B' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by Category C
public static function count_catC(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE cat = 'Category C' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by Category D
public static function count_catD(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE cat = 'Category D' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}



//count by regions Greater Accra
public static function count_GAcc(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Greater Accra Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by regions Central Accra
public static function count_Cent(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Central Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by regions Central Accra
public static function count_Ash(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Ashanti Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by regions Central Accra
public static function count_Bono(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Bono East Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}


//count by regions Central Accra
public static function count_Est(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Eastern Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by regions Central Accra
public static function count_North(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Northern Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by regions Central Accra
public static function count_Sav(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Savannah Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}


//count by regions Central Accra
public static function count_Uppe(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Upper East Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}


//count by regions Central Accra
public static function count_Uppw(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Upper West Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by regions Central Accra
public static function count_BA(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Brong Ahafo Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}

//count by regions Central Accra
public static function count_West(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Western Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}


//count by regions Central Accra
public static function count_Volta(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Volta Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}


//count by regions Central Accra
public static function count_WN(){

global $database;

$sql = "SELECT COUNT(*) FROM " . static::$db_table;
$sql .= " WHERE region = 'Western North Region' ";
$result_set = $database->query($sql);
$row = mysqli_fetch_array($result_set);

return array_shift($row);
}


// school placement search $query
public function placement_query(){

	global $database;

	$sql = "SELECT * FROM " . static::$db_table;
	$sql .= " WHERE cat = 'Category A' ";
	$result_set = $database->query($sql);
	$row = mysqli_fetch_array($result_set);

	return true;
}




//search query
public static function find_search(){

	global $database;

	$sql = "SELECT * FROM " . static::$db_table;
	$result_set = $database->query($sql);
	$row - mysqli_fetch_array($result_set);

	return array_shift($row);
}



}






?>
