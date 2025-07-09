<?php
include("top.php");
?>
    <!-- Flowbite CSS -->
    <link href="https://cdn.jsdelivr.net/npm/flowbite/dist/flowbite.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100 text-gray-900">

<?php
include("nav.php");
?>

<!-- Page Container -->
<div class="flex justify-center items-center h-screen" style="margin-top:-30vh;">
    <div class="text-center p-6 bg-white rounded-lg shadow-lg max-w-md">
        <!-- Success Message -->
        <h1 class="text-3xl font-bold text-green-600 mb-4">Article Submitted Successfully!</h1>
        
        <!-- Button to go back to home -->
        <a href="index.php" class="text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5">Back to Home</a>
    </div>
</div>

<!-- Flowbite JS -->
<script src="https://cdn.jsdelivr.net/npm/flowbite/dist/flowbite.min.js"></script>

<?php
include("down.php");
?>
