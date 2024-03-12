<?php
    require_once "excel/PHPExcel.php";//เรียกใช้ library สำหรับอ่านไฟล์ excel
        $tmpfname = "excel/OLD_savingBKD.xlsx";//กำหนดให้อ่านข้อมูลจากไฟล์จากไฟล์ชื่อ   27/10
       //สร้าง object สำหรับอ่านข้อมูล ชื่อ $excelReader
        $excelReader = PHPExcel_IOFactory::createReaderForFile($tmpfname);
        $excelObj = $excelReader->load($tmpfname);//อ่านข้อมูลจากไฟล์ชื่อ test_excel.xlsx
        $worksheet = $excelObj->getSheet(46);//อ่านข้อมูลจาก sheet แรก
        $lastRow = $worksheet->getHighestRow(); 
       //นับว่า sheet แรกมีทั้งหมดกี่แถวแล้วเก็บจำนวนแถวไว้ในตัวแปรชื่อ $lastRow
   
        echo "<table>";
        for ($row = 4; $row <= $lastRow; $row++)//วน loop อ่านข้อมูลเอามาแสดงทีละแถว
       {
           echo "<tr><td>";
             echo $worksheet->getCell('A'.$row)->getValue();//แสดงข้อมูลใน colum A
           echo "</td><td>";
              echo $worksheet->getCell('B'.$row)->getValue();//แสดงข้อมูลใน colum B
            echo "</td><td>";
              echo $worksheet->getCell('C'.$row)->getValue();//แสดงข้อมูลใน colum C
            echo "</td><td>";
              echo $worksheet->getCell('D'.$row)->getValue();//แสดงข้อมูลใน colum D
                    echo "</td><td>";
                    echo $worksheet->getCell('S'.$row)->getValue();//แสดงข้อมูลใน colum S   27/10
                    $cellF = $worksheet->getCell('F'.$row)->getValue();
                    $cellR = $worksheet->getCell('R'.$row)->getValue();
                    //$sumFR = $cellF*$cellR ;
                    echo " หลังคำนวน manual -> ".$cellF." , ".$cellR ;
                    echo "</td><td>";
                    echo $worksheet->getCell('BE'.$row)->getValue();//แสดงข้อมูลใน colum BE   27/10
            echo "</td><tr>";
        }
        echo "</table>";   
?>