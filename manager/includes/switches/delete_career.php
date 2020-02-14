<?php include("../init.php"); ?>

<?php if(!$session->is_signed_in()){ redirect("index.php");} ?>

<?php

if(empty($_GET['id'])){

  redirect("../../career.php");
}

$career = Career::find_by_id($_GET['id']);

if($career){

  $career->delete();
  redirect("../../career.php");
} else{
  redirect("../../career.php");
}

 ?>
