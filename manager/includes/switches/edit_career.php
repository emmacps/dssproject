<?php if(!$session->is_signed_in()){

    redirect("index.php");
}

?>
          <?php

          $message = "";

          if(empty($_GET['id'])){

            redirect("career.php");

          }else{

          $careers = Career::find_by_id($_GET['id']);

          if(isset($_POST['update_career'])){

           if($careers){

          $careers->school = $_POST['school'];
          $careers->programme = $_POST['programme'];
          $careers->description = $_POST['description'];
          $careers->careers = $_POST['careers'];

          if($careers->save()){

           $message = "<div class='alert alert-info' role='alert'>
                        <b>New Career Edited Successfully! <a href='career.php'>View All</a> </b>
                       </div>";

          }else{
           $message = join("<br>", $careers->errors);
          }

          }

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
                         <input type="text" class="form-control" name="school" value="<?php echo $careers->school; ?>" required>
                       </div>
                       <div class="form-group col-md-6">
                         <label for="">Programme to study:</label>
                         <input type="text" class="form-control" name="programme" value="<?php echo $careers->programme ?>" required>
                       </div>
                      <div class="form-group col-md-6">
                          <label for="">Programme Description:</label>
                          <textarea name="description" class="form-control" rows="8" cols="80">
                            <?php echo $careers->description ?>
                          </textarea>
                     </div>

                        <div class="form-group col-md-6">
                         <label for="">Careers:</label>
                         <input type="text" class="form-control" name="careers" autocomplete="yes" value="<?php echo $careers->careers ?>" required>
                       </div>


                    <div class="form-group col-md-12">
                       <input type="submit" class="btn btn-primary" name="update_career" value="Update">
                    </div>


                     </form>
                      <!--   Starting form 1: Personal Profile     -->
          </div>
