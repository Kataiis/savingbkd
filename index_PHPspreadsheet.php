<?php

require '../vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$inputFileName = 'excel/savingbkd.xlsx';//ชื่อไฟล์ Excel ที่ต้องการอ่านข้อมูล

$spreadsheet = IOFactory::load($inputFileName);
$sheetData = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);

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

<table border='1'>
	<tr>
		<th>Customer Code</th>
		<th>Customer Name</th>
		<th>ชื่อ-สกุล</th>
		<th>ยอดเงินออมสะสม (55-63)</th>
	</tr>
	<?php
		$i = 1;
		foreach($data as $q){
			
			if($i > 1){
				$b = trim($q[0]);
				$c = trim($q[1]);
				$d = trim($q[2]);
				$e = trim($q[3]);
				$g = trim($q[5]);
				
				echo "<tr>";
				echo "<td>$b</td>";
				echo "<td>$c</td>";
				echo "<td>".$d." ".$e."</td>";
				echo "<td>".$g."</td>";
				echo "</tr>";
			}
			$i++;
		}
	?>
</table>		