<?php
     // Setting up connection with database Geeks
     $conn = mysqli_connect("localhost", "root", "12345678", "csv_db");

    //check connection
    if (mysqli_connect_errno())
    {
        echo "Database connection failed.";
    }

    
?>