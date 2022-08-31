<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "final_inventory";


    
    
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database);
    
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
?>