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
      <h1>
        Dashboard
        <small>System Summery</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--
        | Your Page Content Here |
        -------------------------->
        <!-- Small boxes (Stat box) -->
<div class="row">
  <div class="col-lg-2 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-aqua">
      <div class="inner">
          <h4>Schools</h4>
        <h3><?php echo School::count_all(); ?></h3>
      </div>
      <div class="icon">
        <i class="fa fa-users"></i>
      </div>
      <a href="schools.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <!-- ./col -->
  <div class="col-lg-2 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-gray">
      <div class="inner">
        <h4>Careers</h4>
        <H3>130</H3>
        <h3><?php //echo Career::count_all(); ?></h3>
      </div>
      <div class="icon">
        <i class="fa fa-user"></i>
      </div>
      <a href="career.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <!-- ./col -->
</div>
<!-- /.row -->

<!-- chart section  -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
<?php include "includes/footer.php"; ?>
