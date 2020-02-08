<?php include("../init.php"); ?>

<?php if(!$session->is_signed_in()){ redirect("index.php");} ?>

<?php

if(empty($_GET['id'])){

  redirect("../../schools.php");
}

$school = School::find_by_id($_GET['id']);

if($school){

  $school->delete();
  redirect("../../schools.php");
} else{
  redirect("../../schools.php");
}

 ?>
