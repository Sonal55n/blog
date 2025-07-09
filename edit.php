<?php
// Include the database connection file
include("connection.php");

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the form data
    $filename=$_FILES["myimg"]["name"];
    $tempname=$_FILES["myimg"]["tmp_name"];
    $folder="images/".$filename;

    // Move uploaded file to specified directory
    if(move_uploaded_file($tempname,$folder)) {


  $id=$_GET["id"];
    $email=$_SESSION["login_user"]["email"];
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $content = mysqli_real_escape_string($conn, $_POST['content']);
    
    
        
        
        $sql3 = "SELECT * FROM tiger WHERE id = $id";
    $result3 = mysqli_query($conn, $sql3);
    $output = mysqli_fetch_assoc($result3);
    
    // Validate input
    if (!empty($title) && !empty($category) && !empty($content)) {
        // Prepare the SQL query to insert the data into the database
        
        
        $sql = "UPDATE tiger SET title = '$title', category = '$category', content = '$content' WHERE id = $id";
        
        // Execute the query
        if (mysqli_query($conn, $sql)) {
            // Redirect to a success page or display a success message
            header("location:complete.php");
        } else {
            // Display an error message if something goes wrong
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    } else {
        // Display an error message if fields are empty
        echo "<p>Please fill in all the fields.</p>";
    }
}
}


// Close the database connection
mysqli_close($conn);
?>



<?php include("top.php"); ?>
<head>
    <!-- Add Quill's CSS -->
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .title-input, .category-select, .file-input {
            width: 100%;
            margin-bottom: 20px;
            padding: 15px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .title-input {
            height: 50px;
        }

        .category-select, .file-input {
            height: 50px;
        }
        /* Custom submit button */
        input[type="submit"] {
            background: purple;
            border-radius: 6px;
            color: white;
            padding: 6px;
            width: 100px;
            height: 40px;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background: #27296d;
        }

        /* Quill editor styles */
        .ql-editor {
            min-height: 300px;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 15px;
            margin-bottom: 20px;
        }

        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }

            .title-input, .category-select, .file-input {
                padding: 12px;
                font-size: 14px;
            }

            input[type="submit"] {
                padding: 12px 24px;
                font-size: 14px;
            }
        }

        
    </style>
</head>
<body>
<?php include("nav.php"); ?>

<div class="container">
<form action="" method="POST" enctype="multipart/form-data">
    <input type="text" class="title-input" name="title" value="<?php echo $output['title'];?>">
    
    <select class="category-select" name="category">
    <option value="architecture">Architecture</option>
    <option value="art">Art and Entertainment</option>
    <option value="blog">Blog</option>
    <option value="business">Business</option>
    <option value="careers">Careers</option>
    <option value="education">Education</option>
    <option value="finance">Finance</option>
    <option value="food">Food</option>
    <option value="food_drink">Food & Drink</option>
    <option value="gaming">Gaming</option>
    <option value="health_fitness">Health & Fitness</option>
    <option value="music">Music</option>
    <option value="lifestyle">Lifestyle</option>
    <option value="news_society">News & Society</option>
    <option value="real_estate">Real Estate</option>
    <option value="shopping">Shopping</option>
    <option value="sports">Sports</option>
    <option value="technology">Technology</option>
    <option value="travel">Travel</option>
    
    <option value="food">food</option>
<option value="home family">home & family</option>
<option value="law">law</option>
<option value="personal">personal</option>
<option value="photography">photography</option>
<option value="relationship">relationship</option>
<option value="self improvement">self improvement</option>
<option value="shopping">shopping</option>
<option value="spirituality">spirituality</option>
<option value="uncategorized">uncategorized</option>

    
    <option value="other">Other</option>
    </select>

    <label class="custom-file-upload">
    Select Photo
    <input type="file" class="file-input" name="myimg" accept="image/*" >
    </label>

    <!-- Quill editor container -->
    <div id="editor" class="ql-editor"></div>

    <!-- Submit button -->
   
        <input type="hidden" name="content" value="<?php echo $output['content'];?> id="content">
        <input type="submit" value="Submit">
    </form>
</div>
<br><br><br>  <?php
include("footer.php");
?>
<?php include("down.php"); ?>

<!-- Add Quill's JavaScript -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
<script>
    // Initialize Quill editor
    var quill = new Quill('#editor', {
        theme: 'snow',
        modules: {
            toolbar: [
                [{ 'font': [] }, { 'size': [] }],
                ['bold', 'italic', 'underline', 'strike'],
                [{ 'color': [] }, { 'background': [] }],
                [{ 'align': [] }],
                [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                ['link'] // Add the link tool here
            ]
        }
    });

    // Submit handler to pass content to the form
    document.querySelector('form').onsubmit = function() {
        var content = document.querySelector('#editor .ql-editor').innerHTML;
        document.querySelector('#content').value = content;
    };
</script>

