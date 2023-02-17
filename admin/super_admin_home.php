<?php 
ob_start();
include '../include/header.php'; 
if($_SESSION['role'] == "Super Admin")
{
?>

	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard - Home
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">     
       <!--Main content--> 
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-maroon">
              <div class="inner">
                <?php
              $result = mysqli_query($con,"SELECT * FROM admin");
                   $num_rows = mysqli_num_rows($result)
               ?>
             <div class="small-box-footer"><?php echo $num_rows; ?></div>
              <p>Total Users</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="add_librarian.php" class="small-box-footer">View Details <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>  
                
      </section>
        <!-- /.Left col -->
        
      </div>
  
<?php }else{
    header("Location: 404.php");
} ?>

<?php include '../include/script.php'; ?>