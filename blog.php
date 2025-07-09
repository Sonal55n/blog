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

<?php
include("top.php");
?>
    <title><?php echo htmlspecialchars($article['title']); ?> - Full Article</title>
    <!-- Flowbite and Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/flowbite/dist/flowbite.min.css" rel="stylesheet" />
    <style>
        .bg{
            background:#dbd8e3;
            border-radius:8px;
            padding:10px;
            text-transform:capitalize;
            margin-bottom:20px;
        }
        .center{
            margin:10px;
            display:flex;
            justify-content:center;
            margin-bottom:20px;
        }
        </style>
</head>
<body class="bg-gray-100 text-gray-900">

<?php
include("nav.php");
?>

<div class="max-w-4xl mx-auto p-6 bg-white shadow-lg rounded-lg mt-12">
    <!-- Article Title -->
     <div class="bg">
    <h1 class="text-3xl font-bold text-gray-800 mb-4" ><?php echo htmlspecialchars($article['title']); ?></h1>
    
    <!-- Article Category -->
    <div class="text-lg text-purple-600 mb-6"><strong>Category:</strong> <?php echo htmlspecialchars($article['category']); ?>
    <br>
    <strong>Writter:</strong> <?php echo htmlspecialchars($article['name']); ?>
    
    </div>
    
    
    
    
    </div>
   

<div class="center">
    <figure class="max-w-lg">
  <img class="h-auto max-w-full rounded-lg" src="<?php echo htmlspecialchars($article['image_path']); ?>" alt="image description">
  
</figure>
</div>


    <!-- Article Content -->
    <div class="text-lg text-gray-700 leading-relaxed mb-6">
        <?php echo nl2br($article['content']); ?>
    </div>

    <!-- Article Published Date -->
    <div class="text-sm text-gray-500 mt-4"><strong>Published on:</strong> <?php echo htmlspecialchars($article['created_at']); ?></div>
</div>

<!-- Share Button -->
<div class="center">
    <button id="shareButton" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 focus:outline-none focus:ring focus:ring-blue-300">
        Share This Page
    </button>
</div>

<!-- Add social sharing options or copying link -->
<div class="center mt-4">
    <p id="shareMessage" class="text-green-600 hidden">Link copied to clipboard!</p>
    <script>
        const shareButton = document.getElementById('shareButton');
        const shareMessage = document.getElementById('shareMessage');

        shareButton.addEventListener('click', () => {
            const pageUrl = window.location.href;

            if (navigator.share) {
                navigator.share({
                    title: '<?php echo htmlspecialchars($article['title']); ?>',
                    text: 'Check out this article!',
                    url: pageUrl
                }).then(() => {
                    console.log('Thanks for sharing!');
                }).catch(console.error);
            } else {
                // Fallback for browsers that do not support Web Share API
                navigator.clipboard.writeText(pageUrl).then(() => {
                    shareMessage.classList.remove('hidden');
                    setTimeout(() => shareMessage.classList.add('hidden'), 2000);
                });
            }
        });
    </script>
</div>





<br><br><br>

<!-- Flowbite JS -->
<script src="https://cdn.jsdelivr.net/npm/flowbite/dist/flowbite.min.js"></script>

<?php
include("footer.php");
?>
<?php
include("down.php");
?>
