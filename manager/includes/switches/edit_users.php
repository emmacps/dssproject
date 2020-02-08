
        <?php

        $message = "";

        if(empty($_GET['id'])){

          redirect("../../users.php");

        }else{

          $users = User::find_by_id($_GET['id']);

          if(isset($_POST['update'])){

            if($users){
              $users->username = $_POST['username'];
              $users->first_name = $_POST['first_name'];
              $users->last_name = $_POST['last_name'];
              $users->email = $_POST['email'];
              $users->password = $_POST['password'];

              if($users->save()){

               $message = "<div class='alert alert-info' role='alert'>
                              <b>User Edited Successfully! <a href='users.php'>View Users</a> </b>
                             </div>";

                }else{
                 $message = join("<br>", $users->errors);
                }

            }
          }
        }

 ?>

      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Edit User</h3>
        </div>
        <?php  echo $message; ?>
        <div class="box-body">
          <div class="row">
            <div class="col-lg-12">

        <form action="" method="post">
        <div class="form-row">
                <div class="form-group col-md-6">
                <label for=""> Username:</label>
                <input type="text" class="form-control" name="username" value="<?php echo $users->username; ?>">
                </div>
                <div class="form-group col-md-6">
                <label for=""> First Name:</label>
                <input type="text" class="form-control" name="first_name" value="<?php echo $users->first_name; ?>">
                </div>
                <div class="form-group col-md-6">
                <label for="">Last Name:</label>
                <input type="text" class="form-control" name="last_name" value="<?php echo $users->last_name; ?>">
                </div>
                <div class="form-group col-md-6">
                <label for="">Email:</label>
                <input type="email" class="form-control" name="email" value="<?php echo $users->email; ?>">
                </div>
                 <div class="form-group col-md-3">
                <label for="">Password</label>
                <input type="text" class="form-control" name="password">
                </div>
        </div>

       </div>

       </div>

       <div class="row">
         <div class="col-lg-12">
           <input type="submit" class="btn btn-primary" name="update" value="Edit User">
         </div>
       </div>
        </form>

      </div>
    </div>
