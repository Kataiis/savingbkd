<?php
include('connectserver.php');
require '../vendor/autoload.php';
session_start();

//////
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$inputFileName = 'upload/savingbkd.xlsx'; //ชื่อไฟล์ Excel ที่ต้องการอ่านข้อมูล

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

            <?php

//////////////
$i = 0;
$j = 1;
$data = [];
foreach ($sheetData as $s => $k) {
    foreach ($k as $g) {
        $i++;
        $data[$j][] = $g;
    }
    $j++;
}

$i = 1;
foreach ($data as $q) {

    if ($i > 1) {        

        ///////  add member to table
        $id = trim($q[1]);
        $name = trim($q[2]);
        $lastname = trim($q[3]);
        $issued_date = trim($q[4]);
        $status_mem = trim($q[62]);
        $fourdigitrandom = rand(1000, 9999);
        $A = trim($q[0]);
        
        if ($A == 'A') {
           
           header('location: detailsaving_admin.php');
        }

        //if( ($id != '') && (str_contains($status_mem, 'ลาออก','เสียชีวิต') !== TRUE) ) {
        if (($id != '') && preg_match('(ลาออก|เสียชีวิต)', $status_mem) !== 1) {
            
            $result1 = mysqli_query($conn,"SELECT * FROM member WHERE id = '".$id."'");

            if (mysqli_num_rows($result1) == 0) {
                
                $addmember = "INSERT INTO member (id, name, lastname, date, password)VALUES ('$id', '$name', '$lastname','$issued_date','$fourdigitrandom')";
                $query = mysqli_query($conn, $addmember);
            }
        }

    }

    $i++;
}



?>
              
     
  </div>
  
</div>


        </p>
        </div>
    </div>
    <br>
    <br><br>
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