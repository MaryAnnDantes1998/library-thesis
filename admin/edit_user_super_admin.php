<?php 
include ('../include/dbcon.php');
$ID=$_GET['user_id']; ?>
<?php 
ob_start();
 include '../include/header.php';
if($_SESSION['role'] == "Super Admin")
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
                        <h2><i class="fa fa-pencil"></i> Edit Profile</h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
<?php
  $query=mysqli_query($con,"select * from tbl_super_admins where sa_id='$ID'")or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
  ?>                       
                        <div class="box">
                            <div class="box-body">
                                <form method="post" enctype="multipart/form-data" class="form-horizontal form-label-left">
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">E-Mail Address:
                                    </label>
                                    <div class="col-md-4">
                                        <input type="email" value="<?php echo $row['email']; ?>" name="email" id="last-name2" required="required" class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">Username
                                    </label>
                                    <div class="col-md-4">
                                        <input type="text" value="<?php echo $row['username']; ?>" name="username" id="last-name2" required="required" class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">Password
                                    </label>
                                    <div class="col-md-4">
                                        <input type="password" name="password" id="last-name2" required="required" class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                                        <a href="userhome.php"><button type="button" class="btn btn-warning"><i class="fa fa-times-circle-o"></i> Cancel</button></a>
                                        <button type="submit" name="update" class="btn btn-success"><i class="glyphicon glyphicon-save"></i> Update</button>
                                    </div>
                                </div>
                            </form>
                            

                            
                            
<?php
$id =$_GET['user_id'];
if (isset($_POST['update'])) {

$email = $_POST['email'];                              
$username = $_POST['username'];
$password = $_POST['password'];
$hashedPwd = password_hash($password, PASSWORD_DEFAULT);




{
mysqli_query($con," UPDATE tbl_super_admins SET email='$email',username='$username', password='$hashedPwd' WHERE sa_id = '$id' ")or die(mysqli_error($con));
echo "<script>alert('Successfully Update Info!'); window.location='super_admin_home.php'</script>";  
}
                                    
}
?>
                            </div>
                        </div>
                        <!-- content starts here -->

                        
                        <!-- content ends here -->
                    </div>
                </div>
            </div>
        </div>
        </section>
        <!-- /.Left col -->
        
      </div>
      <!-- /.row (main row) -->

<?php }else{
    header("Location: 404.php");
} ?>
<?php include '../include/script.php'; ?>