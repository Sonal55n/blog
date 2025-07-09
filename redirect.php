<?php


include("connection.php");

// Check if the user is logged in
if (isset($_SESSION['login']) && $_SESSION['login'] === true && isset($_SESSION['login_user'])) {
    // User is logged in, redirect to post.php
    header("Location: post.php");
    exit();
} else {
    // User is not logged in, redirect to login.php
    header("Location: login.php");
    exit();
}
?>
