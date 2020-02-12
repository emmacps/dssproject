
          <?php

          $message = "";


          if(isset($_POST['create_school'])){

           $schools = new School();

          $schools->cat = $_POST['cat'];
          $schools->name = $_POST['name'];
          $schools->region = $_POST['region'];
          $schools->district = $_POST['district'];
          $schools->location = $_POST['location'];
          $schools->gender = $_POST['gender'];
          $schools->gart = $_POST['gart'];
          $schools->gsci = $_POST['gsci'];
          $schools->agric = $_POST['agric'];
          $schools->hecons = $_POST['hecons'];
          $schools->vart = $_POST['vart'];
          $schools->bus = $_POST['bus'];
          $schools->tech = $_POST['tech'];
          $schools->status = $_POST['status'];


          if($schools->save()){

           $message = "<div class='alert alert-info' role='alert'>
                        <b>New school Added Successfully! <a href='schools.php'>View All</a> </b>
                       </div>";

          }else{
           $message = join("<br>", $schools->errors);
          }

          }

           ?>

                 <div class="container-fluid">
                   <div class="box-header">
                       <h3 class="box-title">Add New University</h3>
                   </div>
                  <?php echo $message; ?>


                   <form action="" method="post" enctype="multiple">
                       <!--   Starting form 1: Personal Profile     -->
                       <h3 class="mt-4" style="text-decoration: underline;">School Details</h3>
                    <div class="form-row">
                       <div class="form-group col-md-6">
                         <label for="">School Name:</label>
                         <input type="text" class="form-control" name="name" required>
                       </div>
                       <div class="form-group col-md-6">
                         <label for="">Course to study:</label>
                         <input type="text" class="form-control" name="name" required>
                       </div>
                      <div class="form-group col-md-6">
                          <label for="">Course Description:</label>
                          <textarea name="name" class="form-control" rows="8" cols="80"></textarea>
                     </div>

                        <div class="form-group col-md-6">
                         <label for="">Careers:</label>
                         <input type="text" class="form-control" name="district" autocomplete="yes" required>
                       </div>
                      

                    <div class="form-group col-md-12">
                       <input type="submit" class="btn btn-primary" name="create_school" value="Add school">
                    </div>


                     </form>
                      <!--   Starting form 1: Personal Profile     -->
          </div>
