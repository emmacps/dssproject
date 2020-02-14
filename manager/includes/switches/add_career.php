
          <?php

          $message = "";


          if(isset($_POST['create_career'])){

           $careers = new Career();

          $careers->school = $_POST['school'];
          $careers->programme = $_POST['programme'];
          $careers->description = $_POST['description'];
          $careers->careers = $_POST['careers'];

          if($careers->save()){

           $message = "<div class='alert alert-info' role='alert'>
                        <b>New Career Added Successfully! <a href='career.php'>View All</a> </b>
                       </div>";

          }else{
           $message = join("<br>", $careers->errors);
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
                         <input type="text" class="form-control" name="school" required>
                       </div>
                       <div class="form-group col-md-6">
                         <label for="">Programme to study:</label>
                         <input type="text" class="form-control" name="programme" required>
                       </div>
                      <div class="form-group col-md-6">
                          <label for="">Programme Description:</label>
                          <textarea name="description" class="form-control" rows="8" cols="80"></textarea>
                     </div>

                        <div class="form-group col-md-6">
                         <label for="">Careers:</label>
                         <input type="text" class="form-control" name="careers" autocomplete="yes" required>
                       </div>


                    <div class="form-group col-md-12">
                       <input type="submit" class="btn btn-primary" name="create_career" value="Add">
                    </div>


                     </form>
                      <!--   Starting form 1: Personal Profile     -->
          </div>
