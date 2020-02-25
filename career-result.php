 <?php require_once "manager/includes/init.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Decision Support System</title>
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">

<!-- data table links  -->
<link rel="stylesheet" href="vendor/datatable/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="vendor/datatable/css/buttons.bootstrap4.min.css">
<link rel="stylesheet" href="vendor/datatable/css/responsive.bootstrap4.min.css">


</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.php">Decision Support &amp; Career Guidance</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.php">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>



  <!-- Page Content -->
  <div class="container-fluid">
    <div class="jumbotron">
      <h1 class="display-4">Schools Result List</h1>
      <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
      <hr class="my-4">
    </div>
  </div>
  <!-- /.container -->

  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <p>summary</p>
      </div>
    </div>
    <div class="row">
      <?php
      if(isset($_POST['career_submit'])){

        $shsCourse = $_POST['shsCourse'];
        $wassce = $_POST['wassce'];
        $uni = $_POST['uni'];
        $programme = $_POST['programme'];
      }

       ?>
      <!-- ending first col -->
      <div class="col-md-6">
        <div class="card mb-5">
          <div class="card-header">Performance</div>
          <div class="card-body">
            <h5 class="card-title">Grade from mock results</h5>
            <h4>SHS Course Studied: <?php echo $shsCourse; ?></h4>
            <h4>Total Aggregate Obtain from WASSCE/SSCE: <?php echo $wassce ?></h4>
            <h4>Preferred University to study: <?php echo $uni ?></h4>
            <h4>Preferred Programme To Study: <?php echo $programme ?></h4>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="card mb-5">
          <div class="card-header">
            Result List
          </div>
          <div class="card-body">
            <h5 class="card-title">School Bases on category</h5>

          </div>
        </div>
      </div>

    </div>

    <!-- Schools results display -->
    <div class="row">
      <div class="col-md-12">
        <table class="table">
          <thead>
            <tr>
              <th>School</th>
              <th>Programme</th>
              <th>Description</th>
              <th>Careers</th>
            </tr>
          </thead>
          <tbody>
            <?php

            if(isset($_POST['career_submit'])) {

              $query = "SELECT * FROM career ORDER BY RAND() LIMIT 4";
              $placement_query = mysqli_query($connection, $query);
              if(!$placement_query){
                die("Query Failed" . mysqli_error($connection));
              }

              $count = mysqli_num_rows($placement_query);
               if($count === 0){
                echo "no result";
              }
              else{

                while($row = mysqli_fetch_assoc($placement_query)){
                  $school = $row['school'];
                  $programme = $row['programme'];
                  $description = $row['description'];
                  $careers = $row['careers'];
                  ?>

            <tr>
              <td><?php echo $school; ?></td>
              <td><?php echo $programme; ?></td>
              <td><?php echo $description; ?></td>
              <td><?php echo $careers; ?></td>

            </tr>
          <?php } } }?>
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; 2020. Valley View University Project Work.</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->

  <script src="js/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <script src="vendor/datatable/js/jquery.dataTables.min.js"></script>
  <script src="vendor/datatable/js/dataTables.bootstrap4.min.js"></script>
  <script src="vendor/datatable/js/dataTables.buttons.min.js"></script>
  <script src="vendor/datatable/js/buttons.bootstrap4.min.js"></script>
  <script src="vendor/datatable/js/jszip.min.js"></script>
  <script src="vendor/datatable/js/pdfmake.min.js"></script>
  <script src="vendor/datatable/js/vfs_fonts.js"></script>
  <script src="vendor/datatable/js/buttons.html5.min.js"></script>
  <script src="vendor/datatable/js/buttons.print.min.js"></script>
  <script src="vendor/datatable/js/buttons.colVis.min.js"></script>
  <script src="vendor/datatable/js/dataTables.responsive.min.js"></script>
  <script src="vendor/datatable/js/responsive.bootstrap4.min.js"></script>

  <script>
$(document).ready(function() {
    var table = $('#example').DataTable( {
        lengthChange: false,
        buttons: [ 'copy', 'excel', 'csv', 'pdf', 'colvis' ]
    } );

    table.buttons().container()
        .appendTo( '#example_wrapper .col-md-6:eq(0)' );
} );

$(function(){
  //initialize select2
  $('.select2').select2()

});
</script>

</body>

</html>
