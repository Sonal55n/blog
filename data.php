<?php
// Include the database connection file
include("connection.php");

// Fetch all data from the 'tiger' table
 $email=$_SESSION["login_user"]["email"];
$sql = "SELECT * FROM tiger WHERE email='$email'";
$result = mysqli_query($conn, $sql);

// Check if there is any data
if (mysqli_num_rows($result) > 0) {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Articles</title>
    <!-- Add some basic styling -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 text-gray-900">
    <div class="container mx-auto p-6">
        <h1 class="text-3xl font-bold text-gray-800 mb-6">All Articles</h1>
        <div class="overflow-x-auto">
            <table class="table-auto w-full bg-white shadow-lg rounded-lg">
                <thead>
                    <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                        <th class="py-3 px-6 text-left">ID</th>
                        <th class="py-3 px-6 text-left">Title</th>
                        <th class="py-3 px-6 text-left">Category</th>
                        <th class="py-3 px-6 text-left">Writer</th>
                        <th class="py-3 px-6 text-left">Content</th>
                        <th class="py-3 px-6 text-left">Image</th>
                        <th class="py-3 px-6 text-left">Published Date</th>
                        <th class="py-3 px-6 text-left">Actions</th>
                    </tr>
                </thead>
                <tbody class="text-gray-600 text-sm font-light">
                <?php
                // Loop through the fetched data and display each row
                while ($row = mysqli_fetch_assoc($result)) {
                ?>
                    <tr class="border-b border-gray-200 hover:bg-gray-100">
                        <td class="py-3 px-6 text-left"><?php echo $row['id']; ?></td>
                        <td class="py-3 px-6 text-left"><?php echo htmlspecialchars($row['title']); ?></td>
                        <td class="py-3 px-6 text-left"><?php echo htmlspecialchars($row['category']); ?></td>
                        <td class="py-3 px-6 text-left"><?php echo htmlspecialchars($row['name']); ?></td>
                        <td class="py-3 px-6 text-left"><?php echo htmlspecialchars($row['content']); ?></td>
                        <td class="py-3 px-6 text-left">
                            <img src="<?php echo htmlspecialchars($row['image_path']); ?>" alt="Image" class="w-16 h-16 rounded">
                        </td>
                        <td class="py-3 px-6 text-left"><?php echo htmlspecialchars($row['created_at']); ?></td>
                        <td class="py-3 px-6 text-left">
                            <!-- Edit Button -->
                            <!--<a href="edit.php?id=<?php echo $row['id']; ?>" class="bg-yellow-500 text-white px-4 py-2 rounded hover:bg-yellow-600 focus:outline-none focus:ring focus:ring-yellow-300">-->
                            <!--    Edit-->
                            <!--</a><br><br>-->
                            <!-- Delete Button -->
                            <a href="delete.php?id=<?php echo $row['id']; ?>" class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600 focus:outline-none focus:ring focus:ring-red-300" onclick="return confirm('Are you sure you want to delete this article?');">
                                Delete
                            </a>
                        </td>
                    </tr>
                <?php
                }
                ?>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
<?php
} else {
    echo "No articles found!";
}

// Close the database connection
mysqli_close($conn);
?>
