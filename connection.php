<?php

session_start();

$servername = "localhost";
$username = "root"; // Replace with your given code name for username
$password = ""; // Replace with your given code name for password
$database = "test"; // Replace with your given code name for database name

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}



?>
