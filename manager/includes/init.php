<?php
defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);

define('SITE_ROOT', DS . 'wamp64' . DS . 'www' . DS . 'testing' . DS . 'admin' );

defined('INCLUDES_PATH') ? null : define('INCLUDES_PATH', SITE_ROOT.DS.'admin'.DS.'includes');

//Initialize files
require_once("function.php");
require_once("db_config.php");
require_once("database.php");
require_once("db_object.php");
require_once("classes/user.php");
// require_once("classes/staff.php");
require_once("classes/school.php");
 require_once("classes/session.php");
// require_once("classes/service.php");
// require_once("classes/expenses.php");
// require_once("classes/visitor.php");
// require_once("classes/attend.php");
// require_once("classes/offering.php");
// require_once("classes/tithe.php");
// require_once("classes/welfare.php");
// require_once("session.php");






?>
