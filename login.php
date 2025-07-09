<?php
include("connection.php");

if(isset($_POST["submit"])){
    $email=$_POST["email"];
    $password=$_POST["password"];
    $result= mysqli_query($conn,"SELECT * FROM signup  WHERE  email = '$email'");
    $row = mysqli_fetch_assoc($result);
    if(mysqli_num_rows($result) > 0){
        if($password == $row["password"]){
            $_SESSION["login"] = true;
            $_SESSION["id"] = $row["id"];

            $_SESSION['login_user']=[
                'username'=> $row['name'],
                'email'=>$row['email'],
            ];
            header("location:post.php");
        }
        else{
            echo"<script> alert('check password'); </script>";
        }

    }
    else{
        echo"<script> alert('user not register'); </script>";
    }
}
?>


<?php
include("top.php");
?>
</head>
<body>
<?php
include("nav.php");
?>


<form method="post" class="max-w-sm mx-auto">

<p class="text-4xl text-gray-900 dark:text-white">Login</p><br>
  <div class="mb-5">
    <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your email</label>
    <input type="email" id="email" name="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@flowbite.com" required />
  </div>
  <div class="mb-5">
    <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your password</label>
    <input type="password" id="password" name="password" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required />
  </div>
  <div class="flex items-start mb-5">
    <div class="flex items-center h-5">
      <input id="remember" type="checkbox" value="" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800" required />
    </div>
    <label for="remember" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">Remember me</label>
  </div>
  <input type="submit" name="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" value="Login">

  <div class="jane" style="margin-top:10px;">
    did't register then first <a href="register.php" style="color:blue;font-weight:bold;">Register</a>
  </div>

</form>
<br><br>
<?php
include("footer.php");
?>
<?php
include("down.php");
?>