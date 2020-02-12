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

    <!-- Main content -->

      <section class="content container-fluid">
        <!--- Your Page Content Here |------->
        <div class="row">
          <div class="col-lg-12">
            <div class="box">
              <div class="box-body">

                <?php

                    if(isset($_GET['source'])){

                    $source = $_GET['source'];
                        } else {
                            $source = "";
                        }

                        switch($source){
                            case 'add_career';
                        include "includes/switches/add_career.php";
                            break;

                        case 'edit_schools';
                            include "includes/switches/edit_schools.php";
                            break;

                        default: include "includes/switches/all_career.php";
                     }

                 ?>
               </div>
            </div>
          </div>
        </div>

      </section>
    <!-- /.content -->

  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
<?php include "includes/footer.php"; ?>
