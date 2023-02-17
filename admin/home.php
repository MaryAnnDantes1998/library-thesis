<?php 
ob_start();
 include '../include/header.php';
if($_SESSION['role'] == "Administrator")
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
              $result = mysqli_query($con,"SELECT * FROM user");
                   $num_rows = mysqli_num_rows($result)
               ?>
             <div class="small-box-footer"><?php echo $num_rows; ?></div>
              <p>Total Users</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="user.php" class="small-box-footer">View Details <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>  


        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
              <div class="inner">
                <?php
          $result = mysqli_query($con,"SELECT * FROM book");
             $num_rows = mysqli_num_rows($result);
            ?>
            <div class="small-box-footer"><?php echo $num_rows; ?></div>
              <p>Total Books</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="book.php" class="small-box-footer">View Details <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>  


        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-blue">
              <div class="inner">
                <?php
          $result = mysqli_query($con,"SELECT * FROM ebooks");
             $num_rows = mysqli_num_rows($result);
            ?>
            <div class="small-box-footer"><?php echo $num_rows; ?></div>
              <p>Total E-Books</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="search_ebook.php" class="small-box-footer">View Details <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>  

      <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
              <?php
          $result = mysqli_query($con,"SELECT * FROM borrow_book");
             $num_rows = mysqli_num_rows($result);
            ?>
            <div class="small-box-footer"><?php echo $num_rows; ?></div>
              <p>Total Borrowed Books</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="borrowed_book.php" class="small-box-footer">View Details <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>   


      <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
               <?php
          $result = mysqli_query($con,"SELECT * FROM archive");
             $num_rows = mysqli_num_rows($result);
            ?>
            <div class="small-box-footer"><?php echo $num_rows; ?></div>
              <p>Total Archived Books</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="inactive_records.php" class="small-box-footer">View Details <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>   


      <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-orange">
              <div class="inner">
               <?php
          $result = mysqli_query($con,"SELECT * FROM special_collection");
             $num_rows = mysqli_num_rows($result);
            ?>
            <div class="small-box-footer"><?php echo $num_rows; ?></div>
              <p>Total Archived Special Collection</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="inactive_records.php" class="small-box-footer">View Details <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>    


          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-purple">
              <div class="inner">
                <?php
                $result = mysqli_query($con,"SELECT * FROM special_collection");
                 $num_rows = mysqli_num_rows($result);
                 ?>
                <div class="small-box-footer"><?php echo $num_rows; ?></div>
              <p>Total Special Collection</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="thesis.php" class="small-box-footer">View Details <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>   

        </section>
        <!-- /.Left col --> 
      </div>

<?php }else{
    header("Location: 404.php");
} ?>

<?php include '../include/script.php'; ?>