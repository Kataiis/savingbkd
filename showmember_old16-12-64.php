<?php
include('connectserver.php');
require '../vendor/autoload.php';
session_start();

//////
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$inputFileName = 'excel/savingbkd.xlsx'; //ชื่อไฟล์ Excel ที่ต้องการอ่านข้อมูล

$spreadsheet = IOFactory::load($inputFileName);
$sheetData = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
/////

if (!isset($_SESSION['username'])) {
    $_SESSION['msg'] = "You must Log in first";
    header('location: login.php');
}

if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['username']);
    header('location: index.php');
}
?>
   
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>กลุ่มออมทรัพย์</title>

</head>


<body>
    <!-- text -->
    
        <div class ="bar">
        </div>
        <div class="container">

            <ul class="nav justify-content-end">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="http://localhost/saving_bkd/index.php">หน้าหลัก</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="http://localhost/saving_bkd/detailsaving.php?logout=1"> ลงชื่อออก <img src="images/exit.png" alt="" width="30" height="24">
                </a>
            </li>
        </ul>
        <br>
  
    <div class ="container-fluid">

    <div class="card mb-3">
  <div class="card-body">
    <h5 class="card-title">สมาชิกกลุ่มออมทรัพย์เพื่อการผลิตบ้านบางกะโด</h5>
    <table class="table table-bordered">
    <thead class="table table-success table-striped">
 
    <h5>ข้อมูลประจำเดือน <input type="text"  name="date"  id="date" value="<?=date('m-Y')?>"/></h5>
    <tr>
    <th>รหัสสมาชิก</th>
    <th>ชื่อ-นามสกุล</th>
    <th>วันที่เข้าเป็นสมาชิก</th>
    <th>Password</th>
  </tr>
    <?php

        $result = mysqli_query($conn,"SELECT * FROM member2");


    while ($aaa = $result->fetch_array(MYSQLI_BOTH)) {
       
        echo "<tr> <td>".$aaa['id']."</td>";
        echo "<td>".$aaa['name']." ".$aaa['lastname']."</td>";
        echo "<td>".$aaa['date']."</td>";
        echo "<td>".$aaa['password']."</td> </tr>";


        
     }
    
     
     ?>
    <br>
    <br>
    <br>
    <div class="fixed-bottom">
        <div class ="footbar">
        <div class="copytext">
            <p class="text-white" Align="center"> © 2021 SavingBKD. All Rights Reserved. Designed By SM </p>
        </div>
      </div>
     

        </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
        integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"
        integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/"
        crossorigin="anonymous"></script>
</body>

</html>