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
      <h1 class="display-4">SHS PLACEMENT</h1>
      <hr class="my-4">
    </div>
  </div>
  <!-- /.container -->

  <div class="container">
    <div class="row">
      <!-- ending first col -->
      <div class="col-md-6">
        <div class="card mb-5">
          <div class="card-header">
            Secondary Schools
          </div>
          <div class="card-body">
            
            <form method="post" action="shs-result.php">
              <div class="form-group row">
                <label for="" class="col-sm-6 col-form-label">English Language</label>
                <div class="col-sm-6">
                  <input type="number" class="form-control" name="english" required>
                </div>
              </div>
              <div class="form-group row">
                <label for="" class="col-sm-6 col-form-label">Mathematics</label>
                <div class="col-sm-6">
                  <input type="number" class="form-control" name="maths" required>
                </div>
              </div>
              <div class="form-group row">
                <label for="" class="col-sm-6 col-form-label">Science</label>
                <div class="col-sm-6">
                  <input type="number" class="form-control" name="science" required>
                </div>
              </div>
              <div class="form-group row">
                <label for="" class="col-sm-6 col-form-label">Social Studies</label>
                <div class="col-sm-6">
                  <input type="number" class="form-control" name="social" required>
                </div>
              </div>
              <p>Select additional best two subjects</p>
              <p>Select first best subject</p>
              <div class="form-group row">
                <select class="form-control col-sm-6" name="subj1" required>
                  <option value="">Select 1st BestSubject</option>
                  <option value="French">French</option>
                  <option value="BDT">BDT</option>
                  <option value="ICT">ICT</option>
                </select>
                <div class="col-sm-6">
                  <input type="number" class="form-control" name="subj1g" required>
                </div>
              </div>
              <div class="form-group row">
                <select class="form-control col-sm-6" name="subj2" required>
                  <option value="">Select 2nd Subject</option>
                  <option value="French">French</option>
                  <option value="BDT">BDT</option>
                  <option value="ICT">ICT</option>
                </select>
                <option class="" value=""></option>
                <div class="col-sm-6">
                  <input type="number" class="form-control" name="subj2g" required>
                </div>
              </div>
              <div class="form-group row">
                 <input type="submit" name="shs_submit" value="Search" class="btn btn-primary mt-3">
              </div>
            </form>
          </div>
        </div>
      </div>

       <!-- second col -->
      <!-- <div class="col-md-6">
        <div class="card mb-5">
          <div class="card-header">
            Technical Schools
          </div>
          <div class="card-body">
            <h5 class="card-title">School Bases on category</h5>
            <div id="columnchart_material" style="width: 600px; height: 300px;"></div>
          </div>
        </div>
      </div> -->
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
