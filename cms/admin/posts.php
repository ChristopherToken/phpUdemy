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

<?php

     if(isset($_GET['source'])) {
    }
?>
        

    </div>
    </div>
    <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>



        <!-- /#page-wrapper -->

    <?php include "includes/admin_footer.php"; ?>