<!-- include header file -->
<?php include "includes/header.php"; ?>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
<?php include "includes/top-nav.php"; ?>
  <!-- Left side column. contains the logo and sidebar -->
<?php include "includes/side-bar.php" ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>  Users Page </h1>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
      <!--- Your Page Content Here |------->
      <div class="row">
        <div class="col-lg-12">
          <?php

            if(isset($_GET['source'])){

            $source = $_GET['source'];
                } else {
                    $source = "";
                }

                switch($source){
                    case 'add_users';
                include "includes/switches/add_users.php";
                    break;

                case 'edit_users';
                    include "includes/switches/edit_users.php";
                    break;

                default: include "includes/switches/all_users.php";
             }

         ?>
        </div>
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
<?php include "includes/footer.php"; ?>
