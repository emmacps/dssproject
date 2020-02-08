<div class="box">
  <div class="box-header">
        <h3 class="box-title">Data Table of all users</h3>
  </div>

           <!--     -->
            <?php $users = User::find_all(); ?>
             <div class="box-body">
           <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
              <thead>
                  <tr>
                      <th>Username</th>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Email</th>
                      <th>Date</th>
                      <th>Action</th>
                  </tr>
              </thead>
          <tbody>
          <?php foreach ($users as $user) : ?>
              <tr>
              <td><?php echo $user->username; ?></td>
              <td><?php echo $user->first_name; ?></td>
              <td><?php echo $user->last_name; ?></td>
              <td><?php echo $user->email; ?></td>
              <td><?php echo $user->register; ?></td>
              <td><a href="users.php?source=edit_users&id=<?php echo $user->id; ?>" class="btn btn-warning">Edit</a>
                  <a href='includes/switches/delete_user.php?id=<?php echo $user->id; ?>' class='btn btn-danger'>Delete</a>
              </td>
              </tr>
              <?php endforeach; ?>
          </tbody>
          <tfoot>
              <tr>
                  <th>Username</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Email</th>
                  <th>Date</th>
                  <th>Action</th>
              </tr>
          </tfoot>
      </table>
    </div>


</div>
