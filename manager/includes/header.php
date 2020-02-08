<?php ob_start(); ?>
<?php require_once "init.php"; ?>

<?php if(!$session->is_signed_in()){

    redirect("index.php");
}

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DSS | Admin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="vendor/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">

  <link rel="stylesheet" href="css/skin-blue.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="vendor/iCheck/square/blue.css">

  <!-- Select2 -->
  <link rel="stylesheet" href="vendor/select2/css/select2.min.css">

<!-- data table links  -->
<link rel="stylesheet" href="vendor/datatable/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="vendor/datatable/css/buttons.bootstrap4.min.css">
<link rel="stylesheet" href="vendor/datatable/css/responsive.bootstrap4.min.css">


<!-- <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> -->
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->

</head>
