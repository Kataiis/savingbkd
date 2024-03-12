<?php 
    include('connectserver.php');
    require '../vendor/autoload.php';
    session_start();

    //////
    use PhpOffice\PhpSpreadsheet\IOFactory;
    use PhpOffice\PhpSpreadsheet\Spreadsheet;
    use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

    $inputFileName = 'excel/test.xlsx';//ชื่อไฟล์ Excel ที่ต้องการอ่านข้อมูล

    $spreadsheet = IOFactory::load($inputFileName);
    $sheetData = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
    /////

    if (!isset($_SESSION['username'])){
        $_SESSION['msg'] = "You must Log in first";
        header('location: login.php');
    }

    if (isset($_GET['logout'])){
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
                foreach($sheetData as $s => $k){
                    foreach($k as $g){
                        $i++;
                        $data[$j][] = $g;
                    }
                    $j++;
                }
                ?>

                <table class="table table-bordered">

                <thead class="table table-success table-striped">
                    <tr><th class="text-center"> # </th>
                        <th> ข้อมูลสมาชิก </th>
                      
                    </tr>
                    <?php
                        $i = 1;
                        $active = 0 ;
                        $concat_privilege_3 ='';
                        foreach($data as $q){
                            
                            if($i > 1){
                                $id = trim($q[1]);
                                $employee_1 = trim($q[61]);
                                $accumulated_2 = trim($q[18]);
                                $privilege_3 = trim($q[60]);
                                $no_loan4_1 = trim($q[22]);
                                $loan4_2 = trim($q[19]);
                                $installment4_3 = trim($q[21]);
                                $firstpay4_4 = trim($q[23]);
                                $mainpay4_5 = trim($q[37]);
                                $mainstale4_6 = trim($q[38]);
                                $approval_re_5= trim($q[62]);
                                $dividend_6y = trim($q[56]);
                                $date_7 = trim($q[63]);

                                if($active == 1)
                                {
                                    if($id==''){
                                        $last = $loan4_2 ;
                                        $concat_privilege_3 =  $concat_privilege_3.$privilege_3;
                                    }else
                                        $active = 0 ;
                                }
                                ///////  check id = $_SESSION["username"]
                                if($id == $_SESSION["username"])
                                {
                                    $active = 1 ;
                                    $concat_privilege_3 = $privilege_3;
                                    echo "<tr>";
                                    echo "<td class='text-center'>"."<img src='images/user.png' height='50' width='50'> ". "</td>";
                                    echo "<td>".$employee_1."</td>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<td class='text-center'> ยอดเงินออมสะสม </td>";
                                    echo "<td>".$accumulated_2 ." บาท</td>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<td class='text-center'> สิทธิ์กู้เงิน </td>";
                                    echo "<td>".$privilege_3."</td>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<td class='text-center'>" ." เงินกู้ " ."</td>";
                                    echo "<td>".$no_loan4_1.$loan4_2.$installment4_3.$firstpay4_4.$mainpay4_5 ."</td>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<td class='text-center'>" ." ผลการอนมัติเงินกู้ " ."</td>";
                                    echo "<td>".$approval_re_5."</td>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<td class='text-center'>" ." เงินปันผลประจำปี " ."</td>";
                                    echo "<td>".$dividend_6y." บาท</td>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<td class='text-center'>" ." เงินปันผลพิเศษ " ."</td>";
                                    echo "<td>".$date_7."</td>";
                                    echo "</tr>";
                                }
                            }
                            $i++;
                        }
                        echo "<tr>";
                                    echo "<td class='text-center'>" ." Update " ."</td>";
                                    echo "<td>".$last."</td>";
                                    echo "</tr>";

                                    echo "<tr>";
                                    echo "<td class='text-center'>" ." รวมข้อมูล " ."</td>";
                                    echo "<td>".$concat_privilege_3."</td>";
                                    echo "</tr>";
                    ?>
                    
                </table>
                
                 <div class="d-grid gap-2 d-md-block">
                     <button class="btn btn-primary" type="button">เอกสารสัญญา</button>
                     <button class="btn btn-primary" type="button">ใบสมัคร</button>
                </div>
                <?php 	
                 /////////////
                
                 
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