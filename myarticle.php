<?php
// Include the database connection file
include("connection.php");

// Check if an article ID is provided in the URL
if (isset($_GET['id'])) {
    // Sanitize the article ID
    $article_id = intval($_GET['id']);

    // Fetch the article from the database
    $sql = "SELECT * FROM tiger WHERE id = $article_id";
    $result = mysqli_query($conn, $sql);

    // Check if the article exists
    if (mysqli_num_rows($result) > 0) {
        $article = mysqli_fetch_assoc($result);
    } else {
        echo "Article not found!";
        exit();
    }
} else {
    echo "Invalid article ID!";
    exit();
}

// Close the database connection
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($article['title']); ?> - Full Article</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #27296d;
        }
        .category {
            font-size: 18px;
            margin-bottom: 20px;
            color: #555;
        }
        .content {
            font-size: 18px;
            line-height: 1.6;
            color: #444;
        }
        .created-at {
            margin-top: 20px;
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<body>

<div class="container">
    <h1><?php echo htmlspecialchars($article['title']); ?></h1>
    <div class="category"><strong>Category:</strong> <?php echo htmlspecialchars($article['category']); ?></div>
    
    <!-- Display the content without escaping HTML tags -->
    <div class="content"><?php echo nl2br($article['content']); ?></div>
    
    <div class="created-at"><strong>Published on:</strong> <?php echo htmlspecialchars($article['created_at']); ?></div>
</div>

</body>

</html>
