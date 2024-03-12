<?php 
    include('connectserver.php');
    session_start();
    if (!isset($_SESSION['username'])){
        $_SESSION['msg'] = "You must Log in first";
        header('location: login.php');
    }

    if (isset($_GET['logout'])){
        session_destroy();
        unset($_SESSION['username']);
        header('location: login.php');
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
                <a class="nav-link" href="http://localhost/saving_bkd/index.php?logout='1'"> ลงชื่อออก <img src="images/exit.png" alt="" width="30" height="24">
                </a>
            </li>
        </ul>
        <br>
  
    <div class ="container-fluid">
    <div class="card border-dark mb-3" style="max-width: 100%;">
  <div class="card-header"></div>
  <div class="card-body text-dark">
 

            <?php

            $result = mysqli_query($conn,"SELECT * FROM detailsaving_member61_64 WHERE id = '".$_SESSION['username']."'");

           /* $resultgradeinAll = mysqli_query($result);*/

                while ($aaa = $result->fetch_array(MYSQLI_BOTH)) {
                    echo "<img src='images/user.png' height='50' width='50'> " ;echo "ข้อมูลสมาชิก : ".$aaa['name']." ".$aaa['lastname'].   "<br>" ; 
                   /* echo "<img src='images/calendar.png' height='50' width='50'> " ;echo "วันที่เข้าเป็นสมาชิก :".$aaa['date']."<br>" ; */

                 
                    echo "<div> --> " ;echo "ยอดเงินออมสะสม : ".$aaa['2.accumulated']. " บาท ". "  "."<br>"."</div>";
                    echo "<div> --> " ;echo "สิทธิ์กู้เงิน : ".$aaa['3privilege1']. " ".$aaa['3privilege2']."<br>"."</div>"; 
                    echo "<div> --> " ;echo "เงินกู้ :" ." สัญญาเลขที่ ".$aaa['4.1no_loan']." ยอดเงินกู้ ".$aaa['4.2loan' ]." บาท"."งวดชำระ จำนวน:".$aaa['4.3installment']." งวด"." ชำระงวดแรก  วันที่ ".$aaa['4.4firstpay']." "."ชำระเงินต้น".$aaa['4.5 mainpay']." บาท "." เงินต้นค้างชำระ".$aaa['4.6 mainstale']."<br>"."</div>";
                    echo "<div> --> "  ;echo "ผลการอนมัติเงินกู้ :".$aaa['5approval_re']."<br>"."</div>"; 
                    echo "<div> --> "  ;echo "เงินปันผลประจำปี : ".$aaa['6y_dividend']." บาท "."<br>"."</div>" ;
                    echo "<div> --> "  ;echo "เงินปันผลพิเศษ : ".$aaa['7date']."<br>"."</div>" ;

                    
                 }
                
                 
                 ?>
                 <br>
     
  </div>
  
</div>
<br>
                 <div class="d-grid gap-2 d-md-block">
                     <button class="btn btn-primary" type="button">เอกสารสัญญา</button>
                     <button class="btn btn-primary" type="button">ใบสมัคร</button>
                </div>

        </p>
        </div>
    </div>
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