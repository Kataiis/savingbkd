<?php 

    session_start();

    if (isset($_SESSION['user_login'])) {
        header("location: inspection.php");
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inspection Online</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>

    <div class="container">

        <div class="shadow-sm p-1 mb-3 mt-2 bg-success.bg-gradient rounded">
            <h4><img src="img/RPCL_s.png" height="50" width="50"> Inspection Online</h4>
        </div>

        <h3 class="mt-3">Login</h3>
        <hr>

        <?php if(isset($_SESSION['success'])) : ?>
            <div class="alert alert-success">
                <h3>
                    <?php 
                        echo $_SESSION['success'];
                        unset($_SESSION['success']);
                    ?>
                </h3>
            </div>
        <?php endif ?>

        <?php if(isset($_SESSION['error'])) : ?>
            <div class="alert alert-danger">
                <h3>
                    <?php 
                        echo $_SESSION['error'];
                        unset($_SESSION['error']);
                    ?>
                </h3>
            </div>
        <?php endif ?>

        <form action="login_db.php" method="post" class="form-horizontal my-3">
        
            <label for="user" class="col-sm-3 control-label">User</label>
            <div class="col-sm-12">
                <input type="text" name="txt_user" class="form-control" required>
            </div>
            
            <label for="password" class="col-sm-3 control-label">Password</label>
            <div class="col-sm-12">
                <input type="password" name="txt_password" class="form-control" required>
            </div>        

            <div class="form-group">
                <div class="col-sm-12 mt-3">
                    <input type="submit" name="btn_login" class="btn btn-success" style="width: 100%;" value="Login">
                </div>
            </div>

        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>