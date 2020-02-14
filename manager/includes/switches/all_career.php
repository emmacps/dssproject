<div class="box-header">
    <h3 class="box-title">Data Table of all Universities for Career Guidance</h3>
</div>
         <!--     -->
          <?php $careers = Career::find_all(); ?>
         <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
            <thead>
                <tr>
                  <th>School</th>
                  <th>Programme</th>
                  <th>Description</th>
                  <th>Careers</th>
                  <th>Action</th>
                </tr>
            </thead>
        <tbody>
        <?php foreach ($careers as $career) : ?>
            <tr>
            <td><?php echo $career->school; ?></td>
            <td><?php echo $career->programme; ?></td>
            <td><?php echo $career->description; ?></td>
            <td><?php echo $career->careers; ?></td>

            <td>
              <a title="Edit" href="career.php?source=edit_career&id=<?php echo $career->id; ?>" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
              <a title="Delete" href='includes/switches/delete_career.php?id=<?php echo $career->id; ?>' class='btn btn-danger'><i class="fa fa-trash"></i></a>
            </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
        <tfoot>
            <tr>
              <th>School</th>
              <th>Programme</th>
              <th>Description</th>
              <th>Careers</th>
              <th>Action</th>
            </tr>
        </tfoot>
    </table>

    <br><br><br><br>
