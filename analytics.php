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

  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

  <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

          var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['Category A', <?php echo School::count_catA(); ?>],
            ['Category B', <?php echo School::count_catB(); ?>],
            ['Category C', <?php echo School::count_catC(); ?>],
            ['Category D', <?php echo School::count_catD(); ?>]
          ]);

          var options = {
            title: 'Schools Categories Pie Chart'
          };

          var chart = new google.visualization.PieChart(document.getElementById('piechart'));

          chart.draw(data, options);
        }
      </script>


      <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Regions', 'No. of SHS'],
          ['Greater Accra', <?php echo School::count_GAcc(); ?>],
          ['Central', <?php echo School::count_Cent(); ?>],
          ['Ashanti', <?php echo School::count_Ash(); ?>],
          ['Bono East', <?php echo School::count_Bono(); ?>],
          ['Eastern', <?php echo School::count_Est(); ?>],
          ['Northern', <?php echo School::count_North(); ?>],
          ['Savannah', <?php echo School::count_Sav(); ?>],
          ['Upper East', <?php echo School::count_Uppe(); ?>],
          ['Brong Ahafo', <?php echo School::count_BA(); ?>],
          ['Western', <?php echo School::count_West(); ?>],
          ['Upper West', <?php echo School::count_Uppw(); ?>],
          ['Volta', <?php echo School::count_Volta(); ?>],
          ['Western North', <?php echo School::count_WN(); ?>]
        ]);

        var options = {
          chart: {
            // title: 'Company Performance',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>





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
      <h1 class="display-4">SHS SELECTION ANALYSIS</h1>
      <hr class="my-4">
    </div>
  </div>
  <!-- /.container -->

  <div class="container-fluid">
    <div class="row">
      <!-- ending first col -->
      <div class="col-md-6">
        <div class="card mb-5">
          <div class="card-header">
            Schools Report Summary
          </div>
          <div class="card-body">
            <h5 class="card-title">School Bases on category</h5>
            <div id="piechart" style="width: 600px; height: 300px;"></div>
          </div>
        </div>
      </div>

       <!-- second col -->
      <!-- <div class="col-md-6">
        <div class="card mb-5">

        </div>
      </div> -->
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="card-header">
          Schools Report Summary
        </div>
        <div class="card-body">
          <h5 class="card-title">School Bases on Regions</h5>
          <div id="columnchart_material" style="width: 100%; height: 300px;"></div>
        </div>
      </div>
    </div>
    <br><br><br>

    <!-- starting data table -->
    <div class="row">
      <div class="col-md-12">
        <?php $schools = School::find_all(); ?>
        <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
            <thead>
                <tr>
                  <th>Category</th>
                  <th>Region</th>
                  <th>District</th>
                  <th>School</th>
                  <th>Location</th>
                  <th>Gender</th>
                  <th>Agric</th>
                  <th>Bus.</th>
                  <th>Tech</th>
                  <th>Home Econs</th>
                  <th>Vis. Arts</th>
                  <th>Gen. Arts</th>
                  <th>Gen. Sci.</th>
                  <th>Status</th>
                </tr>
            </thead>
            <tbody>
            <?php foreach ($schools as $school) : ?>
                <tr>
                <td><?php echo $school->cat; ?></td>
                <td><?php echo $school->region; ?></td>
                <td><?php echo $school->district; ?></td>
                <td><?php echo $school->name; ?></td>
                <td><?php echo $school->location; ?></td>
                <td><?php echo $school->gender; ?></td>
                <td><?php echo $school->agric; ?></td>
                <td><?php echo $school->bus; ?></td>
                <td><?php echo $school->tech; ?></td>
                <td><?php echo $school->hecons; ?></td>
                <td><?php echo $school->vart; ?></td>
                <td><?php echo $school->gart; ?></td>
                <td><?php echo $school->gsci; ?></td>
                <td><?php echo $school->status; ?></td>

                </tr>
                <?php endforeach; ?>
            </tbody>
        <tfoot>
            <tr>
              <th>Category</th>
              <th>Region</th>
              <th>District</th>
              <th>School</th>
              <th>Location</th>
              <th>Gender</th>
              <th>Agric</th>
              <th>Bus.</th>
              <th>Tech</th>
              <th>Home Econs</th>
              <th>Vis. Arts</th>
              <th>Gen. Arts</th>
              <th>Gen. Sci.</th>
              <th>Status</th>
            </tr>
        </tfoot>
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
