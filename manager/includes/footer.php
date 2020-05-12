<footer class="main-footer">
  <!-- To the right -->
  <!-- Default to the left -->
  <strong>Copyright &copy; 2020. Valley View University Project Work.
</footer>


<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
immediately after the control sidebar -->
<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="vendor/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="vendor/select2/js/select2.full.min.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>


<script src="vendor/select2/js/select2.full.min.js"></script>

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

<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>



<!-- Optionally, you can add Slimscroll and FastClick plugins.
   Both of these plugins are recommended to enhance the
   user experience. -->
</body>
</html>
