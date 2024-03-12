<html>
<head>
<title>ThaiCreate.Com Tutorial</title>
</head>
<body>
<?php
	if(move_uploaded_file($_FILES["filUpload"]["tmp_name"],"myfile/".$_FILES["filUpload"]["name"]))
	{
		echo "Copy/Upload Complete<br>";

		//*** Insert Record ***//
        $conn = mysqli_connect("localhost", "root", "12345678", "csv_db") or die("Error Connect to Database");
		$strSQL = "INSERT INTO files ";
		$strSQL .="(FilesName) VALUES ('".$_FILES["filUpload"]["name"]."')";
		$objQuery = mysqli_connect($strSQL);		
	}
?>
<a href="PageUploadToMySQL3.php">View files</a>
</body>
</html>