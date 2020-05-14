 <?php require_once "manager/includes/init.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Career Guidance System</title>
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
      <a class="navbar-brand" href="index.php">Career Guidance System</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
      </div>
    </div>
  </nav>



  <!-- Page Content -->
  <div class="container-fluid">
    <div class="jumbotron">
      <h1 class="display-4">Schools Result List</h1>
      <hr class="my-4">
    </div>
  </div>
  <!-- /.container -->

  <div class="container">
    <div class="row">
      <?php
      if(isset($_POST['shs_submit'])){

        $english = $_POST['english'];
        $maths = $_POST['maths'];
        $science = $_POST['science'];
        $social = $_POST['social'];
        $subj1 = $_POST['subj1'];
        $subj1g = $_POST['subj1g'];
        $subj2 = $_POST['subj2'];
        $subj2g = $_POST['subj2g'];
        $aggregate = ($english + $maths + $science + $social + $subj1g + $subj2g);

      }



       ?>
      <!-- ending first col -->
      <div class="col-md-6">
        <div class="card mb-5">
          <div class="card-header">Performance</div>
          <div class="card-body">
            <h5 class="card-title">Grade from mock results</h5>
            <h4>English Language: <?php echo $english; ?></h4>
            <h4>Mathematics: <?php echo $maths ?></h4>
            <h4>Science: <?php echo $science ?></h4>
            <h4>Social Studies: <?php echo $social ?></h4>
            <h4><?php echo $subj1 ." :" . $subj1g ?></h4>
            <h4><?php echo $subj2 ." :" . $subj2g ?></h4>
            <h5>Total Aggregate: <?php echo $aggregate ?></h5>
          </div>
        </div>
      </div>

      <!-- <div class="col-md-6">
        <div class="card mb-5">
          <div class="card-header">
            Result List
          </div>
          <div class="card-body">
            <h5 class="card-title">School Bases on category</h5>

          </div>
        </div>
      </div> -->

    </div>

    <!-- Schools results display -->
    <div class="row">
      <div class="col-md-12">
        <table class="table">
          <thead>
            <tr>
              <th>Category</th>
              <th>School</th>
              <th>Subjects</th>
              <th>Region</th>
              <th>District</th>
              <th>Location</th>
              <th>Gender</th>
              <th>Housing Status</th>
            </tr>
          </thead>
          <tbody>
            <?php

          //  if ($agg)



            if(isset($_POST['shs_submit'])) {
              $english = $_POST['english'];
              $maths = $_POST['maths'];
              $science = $_POST['science'];
              $social = $_POST['social'];
              $subj1 = $_POST['subj1'];
              $subj1g = $_POST['subj1g'];
              $subj2 = $_POST['subj2'];
              $subj2g = $_POST['subj2g'];
              $aggregate = ($english + $maths + $science + $social + $subj1g + $subj2g);
              $shs_submit = $_POST['shs_submit'];


              $query = "SELECT * FROM schools ORDER BY RAND() LIMIT 4";
             // $query .= " WHERE cat = 'Category A' ";
              $placement_query = mysqli_query($connection, $query);
              if(!$placement_query){
                die("Query Failed" . mysqli_error($connection));
              }

              $count = mysqli_num_rows($placement_query);
               if($count === 0){
                echo "no result";
              } elseif ($aggregate >= 46) {
                echo " no school";
              }
              else{

                while($row = mysqli_fetch_assoc($placement_query)){
                  $cat = $row['cat'];
                  $region = $row['region'];
                  $district = $row['district'];
                  $name = $row['name'];
                  $location = $row['location'];
                  $gender = $row['gender'];
                  $agric = $row['agric'];
                  $bus = $row['bus'];
                  $tech = $row['tech'];
                  $hecons = $row['hecons'];
                  $vart = $row['vart'];
                  $gart = $row['gart'];
                  $gsci = $row['gsci'];
                  $status = $row['status'];

                  ?>


            <tr>
              <td><?php echo $cat; ?></td>
              <td><?php echo $name; ?></td>
              <td>
                Agric: <?php echo $agric; ?> <br>
                Bus. <?php echo $bus; ?>  <br>
                Tech: <?php echo $tech; ?> <br>
                H.Econs: <?php echo $hecons; ?><br>
                Vis. Arts: <?php echo $vart; ?><br>
                Gen. Arts: <?php echo $gart; ?> <br>
                Gen.Sci. <?php echo $gsci; ?> <br>
              </td>
              <td><?php echo $region; ?></td>
              <td><?php echo $district; ?></td>
              <td><?php echo $location; ?></td>
              <td><?php echo $gender; ?></td>
              <td><?php echo $status; ?></td>
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
