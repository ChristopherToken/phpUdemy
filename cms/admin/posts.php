<?php include "includes/admin_header.php"; ?>
<?php ob_start() ?>

<div id="wrapper">

<!-- Navigation -->
<?php include "includes/admin_navigation.php"; ?>

<!-- Page Heading -->
<div id="page-wrapper">
<div class="container-fluid">
    <div class="row">
    <div class="col-lg-12">

    <h1 class="page-header">
        Control Panel
        <small>Don't be stupid</small>
    </h1>

    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th>Id</th>
            <th>Author</th>
            <th>Title</th>
            <th>Category</th>
            <th>Stautus</th>
            <th>Image</th>
            <th>Tags</th>
            <th>Comments</th>
            <th>Date</th>
        </tr>
        </thead>

    <tbody>
        <tr>
            <td>10</td>
            <td>Christopher Homberg</td>
            <td>Photo</td>
            <td>Boostrap</td>
            <td>Online</td>
            <td>Image</td>
            <td>tags</td>
            <td>Comments</td>
            <td>Date</td>
        </tr>
    </tbody>
    </table> 

               
    </div>
    </div>
    <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>



        <!-- /#page-wrapper -->

    <?php include "includes/admin_footer.php"; ?>