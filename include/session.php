<?php
session_start();
if (!isset($_SESSION['userid'])){
header('location:../pages/index.php');
}
$id_session=$_SESSION['userid'];

?>