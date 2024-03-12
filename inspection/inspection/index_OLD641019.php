<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inspection Online: Login</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body><br>    

    <div class="container text-center">

        <div class="shadow-sm p-1 mb-3 bg-success.bg-gradient rounded">
            <h4><img src="img/RPCL_s.png" height="50" width="50"> Inspection Online</h4>
        </div>

        <div class="row">
            <div class="col-md-12 col-sm-12  well">
           
                <form action="check_login.php" method="post" class="form-horizontal" enctype="multipart/form-data">
                    <div class="form-group">
                        <div class="row">
                            <label for="name" class="col-sm-3 control-label">Username</label>
                            <div class="col-sm-9">
                                <input type="text" name="txtUsername" id="txtUsername" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <label for="name" class="col-sm-3 control-label">Password</label>
                            <div class="col-sm-9">
                                <input type="password" name="txtPassword" id="txtPassword" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="submit" name="btn_submit" class="btn btn-success" value="Login">
                        </div>
                    </div>
                </form>

            </div>
        </div>

        <div class="shadow-sm p-1 mb-3 bg-success.bg-gradient rounded">
            <span class="glyphicon glyphicon-user"></span>&nbsp; Mr.Methin Teeranaew
            <BR><span class="glyphicon glyphicon-phone-alt"></span>&nbsp; 0 3271 9300 Ext. 2220
            <BR><span class="glyphicon glyphicon-envelope"></span>&nbsp; methin.t@egat.co.th
        </div>               

    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>