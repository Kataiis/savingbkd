<?php
session_start();
include('connectserver.php');

if (isset($_POST["username"],$_POST["password"])) {

    $username = $_POST["username"];
    $password = $_POST["password"];

    $error = array();

    if (count($error) == 0) {

      if(empty($username)){
          array_push($error, "Username is required");
      }
      if(empty($password)){
          array_push($error, "Password is required");
      }
       $result1 = mysqli_query($conn,"SELECT * FROM member WHERE id = '".$username."' AND  password = '".$password."'");

    if (mysqli_num_rows($result1) > 0) {
        $_SESSION["logged_in"] = true;
        $_SESSION["username"] = $username;
        if($_SESSION["username"] =='550501')
            {
                header('location: detailsaving_admin.php');
            }
        else{
                header('location: detailsaving.php');
            }
    }
  
    else {
     
            array_push($error,"Wrong username/password combination");
            $_SESSION['error'] = "Wrong username or password try again!";
               
            header('location: login.php');
        
    }
  }
}
?>
