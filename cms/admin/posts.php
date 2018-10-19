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

        $source= $_GET['source'];
    } else {

        $source ="";

    }

    switch($source) {
        case 'add_post';
        include "includes/add_post.php";
        break;

        case 'edit_post';
        include "includes/edit_post.php";
        break;

        case '32';
        echo "NiCE 200";
        break;

        default:

        include "includes/view_all_post.php";

        break;

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

    