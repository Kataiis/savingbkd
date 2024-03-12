<?php

include('connectserver.php');
include ('./excel/excel_reader.php'); 

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

error_reporting(E_ALL ^ E_NOTICE); // disable warning
setlocale ( LC_ALL, 'Thai' );
$excel = new PhpExcelReader;
$excel->read('./excel/savingbkd2003.xls'); 
function sheetData($sheet) {
  // $kkscode = $_REQUEST[kks];
  $re = '<table>';    
  $x = 4;
  $re .= '<tr><td colspan="64"><img src="../images/SMART_MN01.jpg" width="100%"></td></tr>';
  $re .= '<tr>
    <td colspan="64" align="center" bgcolor="#f2dede">saving</td>
    </tr>' ;  
  
  while($x <= $sheet['numRows']) {
    $re .= "<tr>";
    $y = 1;	
    while($y <= $sheet['numCols']) {
      $cell = isset($sheet['cells'][$x][$y]) ? $sheet['cells'][$x][$y] : '';
		// if ($sheet['cells'][$x][2] == $kkscode){
		// 	$re .= " <td>$cell</td>";  
		// }	    
        $re .= " <td>$cell</td>";    
      $y++;
    }  
    $re .= "</tr>";
    $x++;
  }
  return $re .'</table>';     
}
//$nr_sheets = count($excel->sheets);    read only first sheets 
$nr_sheets = 1;  
$excel_data = '';              
for($i=0; $i<$nr_sheets; $i++) {
  //$excel_data .= '<h4>Sheet '. ($i + 1) .' (<em>'. $excel->boundsheets[$i]['name'] .'</em>)</h4>'. sheetData($excel->sheets[$i]) .'<br/>';  don't show sheet name
  $excel_data .= sheetData($excel->sheets[$i]) ;  
}
?>

<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Example PHP Excel Reader</title>
<style type="text/css">
table {
 border-collapse: collapse;
}        
td {
 border: 1px solid black;
 padding: 0 0.5em;
}        
</style>
</head>
<body>

<?php
echo $excel_data;
?>    

</body>
</html>
