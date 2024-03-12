<?php 

    require_once('connectserver.php');

    if (isset($_REQUEST['btn_insert'])) {
        try {
          

            $excel_file = $_FILES['txt_file']['name'];
            $type = $_FILES['txt_file']['type'];
            $size = $_FILES['txt_file']['size'];
            $temp = $_FILES['txt_file']['tmp_name'];

            $path = "/upload" . $excel_file; // set upload folder path

             if ($type == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet") {
                 if (!file_exists($path)) { // check file not exist in your upload folder path
                    if ($size < 5000000) { 
                        move_uploaded_file($temp, 'upload/'.$excel_file); // move upload file temp directory to upload folder
                    } else {
                        $errorMsg = "Your file too large please upload 20MB size"; 
                    }
                } else {
                    $errorMsg = "File already exists... Check upload filder"; 
                }
            } else {
                $errorMsg = "Upload XLSX & XLS file formate...";
            }




            if (!isset($errorMsg)) {

                    $insertMsg = "File Uploaded successfully...";
                    header('refresh:1;addmember.php');
      
            }

        } catch(PDOException $e) {
            $e->getMessage();
        }
    }


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
    
<br>
    <div class="container text-center">
        <h1>Upload file</h1>
</br>
        <?php 
            if(isset($errorMsg)) {
        ?>
            <div class="alert alert-danger">
                <strong><?php echo $errorMsg; ?></strong>
            </div>
        <?php } ?>

        <?php 
            if(isset($insertMsg)) {
        ?>
            <div class="alert alert-success">
                <strong><?php echo $insertMsg; ?></strong>
            </div>
        <?php } ?>

        <form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
        
        <div class="form-group">
            <div class="row">
            <label for="name" class="col-sm-3 control-label">File</label>
            <div class="col-sm-9">
                <input type="file" name="txt_file" class="form-control">
            </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <input type="submit" name="btn_insert" class="btn btn-success" value="Insert">
                <a href="detailsaving_admin.php" class="btn btn-danger">Cancel</a>
            </div>
        </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>