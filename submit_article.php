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



    $email=$_SESSION["login_user"]["email"];
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $content = mysqli_real_escape_string($conn, $_POST['content']);
    
      $sql2="SELECT*FROM `signup` WHERE email='$email'";
        $query2=mysqli_query($conn,$sql2);
        $da=mysqli_fetch_assoc($query2);
        $name=$da['name'];
    
    // Validate input
    if (!empty($title) && !empty($category) && !empty($content)) {
        // Prepare the SQL query to insert the data into the database
        
        
        $sql = "INSERT INTO tiger (email,title, category,image_path, content,name) VALUES ('$email','$title', '$category','$folder', '$content','$name')";
        
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
