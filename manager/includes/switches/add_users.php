<?php

$message = "";

if(isset($_POST['create_user'])){

$users = new User();

$users->username = $_POST['username'];
$users->first_name = $_POST['first_name'];
$users->last_name = $_POST['last_name'];
$users->email = $_POST['email'];
$users->password = $_POST['password'];
$users->register = date('d-m-y h:i:s A');

if($users->save()){

 $message = "<div class='alert alert-info' role='alert'>
              <b>New User Added Successfully! <a href='users.php'>View Users</a> </b>
             </div>";

}else{
 $message = join("<br>", $users->errors);
}

}

 ?>

<div class="box">
  <div class="box-header">
      <h3 class="box-title">Add New User</h3>
  </div>
  <div class="container-fluid">
   <?php echo $message; ?>
   <div class="row">
     <div class="col-lg-12">
   <div class="box-body">
   <form action="" method="post">
   <div class="form-row">
           <div class="form-group col-md-6">
           <label for=""> Username:</label>
           <input type="text" class="form-control" name="username">
           </div>
           <div class="form-group col-md-6">
           <label for=""> First Name:</label>
           <input type="text" class="form-control" name="first_name">
           </div>
           <div class="form-group col-md-6">
           <label for="">Last Name:</label>
           <input type="text" class="form-control" name="last_name">
           </div>
           <div class="form-group col-md-6">
           <label for="">Email:</label>
           <input type="email" class="form-control" name="email">
           </div>
           <div class="form-group col-md-6">
           <label for="">Password</label>
           <input type="password" class="form-control" name="password">
           </div>
           <!-- <div class="form-group col-md-6">
              <label for="">Password</label>
              <input type="hidden" class="form-control" name="password">
           </div> -->
   </div>


    <div class="row">
      <div class="col-lg-12">
        <input type="submit" class="btn btn-primary" name="create_user" value="Add User">
      </div>
    </div>

     </div>

   </form>
  </div>

</div>

</div>


</div>
