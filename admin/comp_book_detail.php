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
                        <h2 class="col-xs-10"><i class="fa fa-info"></i> Book Complete Details</h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <div class="box">
              <div class="box-body">
                        <!-- content starts here -->

                        <div class="table-responsive">
                            <table id="example1" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered">
                                
                            <thead  style="background: #FFFF">
                                <tr>
                                    <th>Accession No./Barcode</th>
                                    <th>Call Number</th>
                                    <th>Title</th>
                                    <th>Subject/s</th>
                                    <th>Author</th>
                                    <th>Editor</th>
                                    <th>Edition</th>
                                    <th>Place of Publ</th>
                                    <th>Publisher</th>
                                    <th>Date_of_Publ</th>
                                    <th>Series</th>
                                    <th>ISBN_No</th>
                                    <th>Status</th>
                                    <th>ISSN_No</th>
                                    <th>Notation1</th>
                                    <th>Notation2</th>
                                    <th>Abstract</th>
                                    <th>Page No.</th>
                                    <th>Remarks</th>

                                </tr>
                            </thead>
                            <tbody>
<?php
               
        if (isset($_GET['book_id']))
        $id=$_GET['book_id'];
        $result1 = mysqli_query($con,"SELECT * FROM book 
        LEFT JOIN tbl_moa ON tbl_moa.moa_id = book.moa_id
        LEFT JOIN tbl_publishers ON tbl_publishers.publisher_id = book.publisher_id
        LEFT JOIN tbl_placeofpublications ON tbl_placeofpublications.pop_id = book.pop_id");
        while($row = mysqli_fetch_array($result1)){
        ?>
                            <tr> 
                                <td><?php echo $row['accession_no']; ?></td>
                                <td><?php echo $row['call_no']; ?></td>
                                <td style="word-wrap: break-word; width: 10em;"><?php echo $row['title']; ?></td>
                                <td style="word-wrap: break-word; width: 10em;"><?php echo $row['subject']; ?></td>
                                <td><?php echo $row['author']; ?></td>
                                <td><?php echo $row['editor']; ?></td>
                                <td><?php echo $row['edition']; ?></td>
                                <td><?php echo $row['placeofpublication']; ?></td> 
                                <td><?php echo $row['publisher']; ?></td> 
                                <td><?php echo $row['date_of_publ']; ?></td> 
                                <td><?php echo $row['series']; ?></td>
                                <td><?php echo $row['isbn_no']; ?></td>
                                <td><?php echo $row['moa']; ?></td>
                                <td><?php echo $row['issn_no']; ?></td>
                                <td><?php echo $row['notation1']; ?></td>
                                <td><?php echo $row['notation2']; ?></td>
                                <td><?php echo $row['abstract']; ?></td>
                                <td><?php echo $row['page_no']; ?></td>
                                <td><?php echo $row['remarks']; ?></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                            </table>
                        </div>
                        
                        <!-- content ends here -->
                    </div>
                </div>
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