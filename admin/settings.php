<?php 
ob_start();
 include '../include/header.php';
if($_SESSION['role'] == "Administrator")
{
?>

    <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1></h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Main row -->
      <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header with-border">
                <h3>
                    <i class= "fa fa-cog fa-spin"></i> Settings
                </h3>

        <div class="clearfix"></div>
          <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header with-border">
                <?php include ('allowed_qntty.php'); ?>
                
                <?php include ('penalty.php'); ?>
                
                <?php include ('allowed_days.php'); ?>
                
                <div class="clearfix"></div>
                    
            </div>
        </section>
        <!-- /.Left col -->
        
      </div>
      <!-- /.row (main row) -->

<?php }else{
    header("Location: 404.php");
} ?>
<?php include '../include/script.php'; ?>