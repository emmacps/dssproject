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
        <h4>Visitors</h4>
        <h3><?php// echo Visitor::count_all(); ?></h3>
      </div>
      <div class="icon">
        <i class="fa fa-user"></i>
      </div>
      <a href="visitors.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <!-- ./col -->
  <div class="col-lg-2 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-green">
      <div class="inner">
        <h4>Staff</h4>
        <h3><?php //echo Staff::count_all(); ?></h3>
      </div>
      <div class="icon">
        <i class="fa fa-user"></i>
      </div>
      <a href="staff.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <!-- ./col -->
  <div class="col-lg-2 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-yellow">
      <div class="inner">
        <h4>Church Services</h4>
        <h3><?php //echo Service::count_all(); ?></h3>
      </div>
      <div class="icon">
        <i class="fa fa-home"></i>
      </div>
      <a href="services.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <!-- ./col -->
  <div class="col-lg-2 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-red">
      <div class="inner">
        <h4>Expenditure</h4>
        <h3><?php //echo Expense::count_all(); ?></h3>
      </div>
      <div class="icon">
        <i class="ion ion-pie-graph"></i>
      </div>
      <a href="expenditure.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <div class="col-lg-2 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-blue">
      <div class="inner">
        <h4>Attendance</h4>
        <h3><?php //echo Attend::count_all(); ?></h3>
      </div>
      <div class="icon">
        <i class="ion ion-pie-graph"></i>
      </div>
      <a href="attendance.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>

  <!-- <div class="col-lg-2 col-xs-6">
    <div class="small-box bg-green">
      <div class="inner">
        <h3>65</h3>
        <p>Expenditure</p>
      </div>
      <div class="icon">
        <i class="ion ion-pie-graph"></i>
      </div>
      <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div> -->
  <!-- ./col -->
</div>
<!-- /.row -->

<!-- chart section  -->
<div class="row">
  <div class="col-sm-6">
    <div class="box">
       <!-- <div id="piechart" style="width: 900px; height: 500px;"></div> -->
    </div>

  </div>
</div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
<?php include "includes/footer.php"; ?>
