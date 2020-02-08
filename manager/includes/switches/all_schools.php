<div class="box-header">
    <h3 class="box-title">Data Table of all schools</h3>
</div>
         <!--     -->
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
                  <th>Action</th>
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
            <td>
              <a title="Edit" href="schools.php?source=edit_schools&id=<?php echo $school->id; ?>" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
              <a title="Delete" href='includes/switches/delete_school.php?id=<?php echo $school->id; ?>' class='btn btn-danger'><i class="fa fa-trash"></i></a>
            </td>
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
              <th>Action</th>
            </tr>
        </tfoot>
    </table>

    <br><br><br><br>
