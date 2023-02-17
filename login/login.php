<?php session_start();
include "../include/dbcon.php"; ?>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login</title>
      <link rel="stylesheet" href="../login/style.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   </head>
   <body>
      <div class="bg-img">
         <div class="content">
          <a href="https://stfrancisbacoor.com"><img class="user" src="../img/logo.png"></a>
            <header>Log In</header>
            <form method="POST">
               <div class="field">
                  <span class="fa fa-user"></span>
                  <input type="text" name="username" placeholder="Enter Username...">
               </div>
               <div class="field space">
                  <span class="fa fa-lock"></span>
                  <input type="password" name="password" placeholder="Enter Password...">
               </div>
               <div class="pass">
                  <a href="../login/forgot_pass.php">Forgot Password?</a>
               </div>
               <div class="field">
                  <input type="submit" name="btn_login" value="LOGIN">
               </div>
               <div class="pass">
                  <a href="../index/index.html">Back...</a>
               </div>
            </form>  
         </div>
      </div>

    <?php
        include "../include/dbcon.php";
        if(isset($_POST['btn_login'])) 

        { 
          $username = mysqli_real_escape_string($con, $_POST['username']);
          $password = mysqli_real_escape_string($con, $_POST['password']);


            $super_admin = mysqli_query($con, "SELECT * from tbl_super_admins where username = '$username' ");
            $numrow2 = mysqli_num_rows($super_admin);

            $admin = mysqli_query($con, "SELECT * from admin where username = '$username' ");
            $numrow = mysqli_num_rows($admin);

            $student = mysqli_query($con, "SELECT * from user where username = '$username' ");
            $numrow1 = mysqli_num_rows($student);

            if($numrow > 0)
            {   
                while($row = mysqli_fetch_array($admin))
                {
                  $hashedPwdCheck = password_verify($password, $row['password']);
                  if ($hashedPwdCheck == false) 
                  {
                    echo "<script>alert('Username or Password do not match!'); window.location='index.php'</script>";
                    exit();
                  } 
                  elseif ($hashedPwdCheck == true) 
                  {
                    $_SESSION['role'] = "Administrator";
                    $_SESSION['userid'] = $row['admin_id'];
                  }    
                  header("location:../admin/home.php");
                }
            }
            elseif($numrow1 > 0)
              {   
                while($row = mysqli_fetch_array($student))
                {
                  $hashedPwdCheck1 = password_verify($password, $row['password']);
                  if ($hashedPwdCheck1 == false) 
                  {
                    echo "<script>alert('Login Failed!'); window.location='index.php'</script>";
                    exit();
                  } 
                  elseif ($hashedPwdCheck1 == true) 
                  {
                   $_SESSION['role'] = "Student";
                   $_SESSION['userid'] = $row['user_id'];
                  } 
                  header("location:../admin/userhome.php");
                }
              }
            elseif($numrow2 > 0)
              {   
                while($row = mysqli_fetch_array($super_admin))
                {
                  $hashedPwdCheck1 = password_verify($password, $row['password']);
                  if ($hashedPwdCheck1 == false) 
                  {
                    echo "<script>alert('Login Failed!'); window.location='index.php'</script>";
                    exit();
                  } 
                  elseif ($hashedPwdCheck1 == true) 
                  {
                   $_SESSION['role'] = "Super Admin";
                   $_SESSION['userid'] = $row['sa_id'];
                  } 
                  echo "<script>window.location='../admin/super_admin_home.php'</script>";
                }
              }
             else
                {
                echo "<script>alert('Invalid Account!'); window.location='index.php'</script>";
                }
             
        }
        
      ?>
  </body>
  </html>
