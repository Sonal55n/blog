<?php
include("connection.php");

$email = $_SESSION["login_user"]["email"];

// Correct query with email enclosed in single quotes
$query = "SELECT * FROM `signup` WHERE email = '$email'";

// Execute the query
$sql = mysqli_query($conn, $query);

// Fetch the result
if ($sql) {
    $result = mysqli_fetch_assoc($sql);
} else {
    echo "Error: " . mysqli_error($conn); // Error handling for query execution
}
?>



<?php
include("top.php");
?>
<style>
    .container4{
        text-align:center;
        display:flex;
        /* margin-top:-4rem; */
        justify-content:center;
    }
    </style>

</head>
<body>
<?php
include("nav.php");
?>

<div class="container4">

<div class="w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <div class="flex justify-end px-4 pt-4">
        <button id="dropdownButton" data-dropdown-toggle="dropdown" class="inline-block text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:ring-4 focus:outline-none focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm p-1.5" type="button">
            <span class="sr-only">Open dropdown</span>
            <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 3">
                <path d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z"/>
            </svg>
        </button>
        <!-- Dropdown menu -->

    </div>
    <div class="flex flex-col items-center pb-10">
        <img class="w-24 h-24 mb-3 rounded-full shadow-lg" src="man.png" alt="Bonnie image"/>
        <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white"><?php echo $result['name']; ?>
        </h5>
        <span class="text-sm text-gray-500 dark:text-gray-400"><?php echo $result['email']; ?>
        </span>
        <div class="flex mt-4 md:mt-6">
            <a href="article.php" class="inline-flex items-center px-4 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">post article</a>
            <a href="#" class="py-2 px-4 ms-2 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">My post</a>
            
        </div>
    </div>
</div>
</div>
<br><br><br>
<?php
include("footer.php");
?>
<?php
include("down.php");
?>