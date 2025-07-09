<?php

session_start();

$servername = "localhost";
$username = "kujannej_learnfixx"; // Replace with your given code name for username
$password = "learnfixx55n"; // Replace with your given code name for password
$database = "kujannej_learnfixx"; // Replace with your given code name for database name

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}



?>