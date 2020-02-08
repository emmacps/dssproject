<?php if(!$session->is_signed_in()){

    redirect("index.php");
}

?>

          <?php

          $message = "";

          if(empty($_GET['id'])){

            redirect("schools.php");

          }else{

            $schools = School::find_by_id($_GET['id']);

            if(isset($_POST['update_school'])){

            if($schools){

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
                          <b>school Edited Successfully!  <a href='schools.php'>View All</a> </b>
                         </div>";

            }else{
            // $message = join("<br>", $schools->errors);
            }

            }

          }

        }



           ?>


           <div class="container-fluid">
            <div class="row">
              <div class="col-sm-6">
                <h1 class="mt-4 text-center">Edit school Details</h1>
              </div>
            </div>
            <?php echo $message; ?>


             <form action="" method="post" enctype="multipart/form-data">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="">Select Category</label>
                  <select class="form-control" name="cat" required>
                    <option value="<?php echo $schools->cat; ?>"><?php echo $schools->cat; ?></option>
                    <option value="Category A">Category A</option>
                    <option value="Category B">Category B</option>
                    <option value="Category C">Category C</option>
                    <option value="Category D">Category D</option>
                    <option value="Category E">Category E</option>
                  </select>
                </div>
                 <div class="form-group col-md-6">
                   <label for="">School Name:</label>
                   <input type="text" class="form-control" name="name" value="<?php echo $schools->name; ?>" required>
                 </div>
                 <div class="form-group col-md-6">
                  <label for="">Region</label>
                   <select name="region" class="form-control" required>
                    <option value="<?php echo $schools->region ?>"><?php echo $schools->region ?></option>
                    <option value="Greater Accra Region">Greater Accra Region</option>
                    <option value="Central Region">Central Region</option>
                    <option value="Western Region">Western Region</option>
                    <option value="Volta Region">Volta Region</option>
                    <option value="Eastern Region">Eastern Region</option>
                    <option value="Western North Region">Western North Region</option>
                    <option value="Ashanti Region">Ashanti Region</option>
                    <option value="Ahofo Region">Ahofo Region</option>
                    <option value="Brong Ahafo Region">Brong Ahafo Region</option>
                    <option value="Bono East Region">Bono East Region</option>
                    <option value="Oti Region">Oti Region</option>
                    <option value="Savannah Region">Savannah Region</option>
                    <option value="Northern Region">Northern Region</option>
                    <option value="North East Region">North East Region</option>
                    <option value="Upper East Region">Upper East Region</option>
                    <option value="Upper West Region">Upper West Region</option>
                  </select>
                </div>

                  <div class="form-group col-md-6">
                   <label for="">Destrict:</label>
                   <input type="text" class="form-control" name="district" value="<?php echo $schools->district; ?>" required>
                 </div>
                  <div class="form-group col-md-6">
                   <label for="">Location:</label>
                   <input type="text" class="form-control" name="location" value="<?php echo $schools->location; ?>" required>
                 </div>
                 <div class="form-group col-md-6">
                   <label for="">Gender Housing Status</label>
                   <select class="form-control" name="gender" required>
                     <option value="<?php echo $schools->gender; ?>"><?php echo $schools->gender; ?></option>
                     <option value="Boys">Boys</option>
                     <option value="Girls">Girls</option>
                     <option value="Mixed">Mixed</option>
                   </select>
                 </div>


                 <p>Courses</p>
                  <div class="form-group col-md-6">
                    <div class="form-group col-md-6">
                      <div class="form-group">
                        <label for="">General Arts</label>
                        <select class="form-control" name="gart" required>
                          <option value="<?php echo $schools->gart ?>"><?php echo $schools->gart ?></option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="">General Science</label>
                        <select class="form-control" name="gsci" required>
                            <option value="<?php echo $schools->gsci ?>"><?php echo $schools->gsci ?></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="">General Agriculture</label>
                        <select class="form-control" name="agric" required>
                          <option value="<?php echo $schools->agric ?>"><?php echo $schools->agric ?></option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="">Home Economics</label>
                        <select class="form-control" name="hecons" required>
                            <option value="<?php echo $schools->hecons ?>"><?php echo $schools->hecons ?></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group col-md-6">
                      <div class="form-group">
                        <label for="">Visual Art</label>
                        <select class="form-control" name="vart" required>
                            <option value="<?php echo $schools->vart ?>"><?php echo $schools->vart ?></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="">Business</label>
                        <select class="form-control" name="bus" required>
                            <option value="<?php echo $schools->bus ?>"><?php echo $schools->bus ?></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="">Technical</label>
                        <select class="form-control" name="tech" required>
                          <option value="<?php echo $schools->tech ?>"><?php echo $schools->tech ?></option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select>
                      </div>
                    </div>
                </div>
                <div class="form-group col-md-6">
                  <label for="">Status</label>
                  <select class="form-control" name="status" required>
                    <option value="<?php echo $schools->status; ?>"><?php echo $schools->status; ?></option>
                    <option value="Day">Day</option>
                    <option value="Boarding">Boarding</option>
                    <option value="Day/Boarding">Day/Boarding</option>
                  </select>
                </div>

                <div class="form-group col-md-12">
                    <input type="submit" class="btn btn-primary" name="update_school" value="Edit school">
                </div>



               </form>

    </div>
