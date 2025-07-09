<?php
include("connection.php");
?>

<?php
include("top.php");
?>
<style>
    .cont2 {
        margin: 8%;
        padding: 20px;
        background: white;
        border-radius: 8px;
        display: flex;
        flex-wrap: wrap;
    }

    body {
        background: #eeeeee;
    }

    .category {
        width: 25%;
        margin-right: 20px;
    }

    .category h1 {
        font-size: 25px;
        text-transform: uppercase;
        font-weight: bold;
        margin-bottom: 20px;
    }

    .list {
        list-style-type: none;
        text-transform: capitalize;
        margin-top: 5px;
    }

    .content {
        width: 70%;
    }

    .grid-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .sqare {
        background: white;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(1, 1, 2, 0.3);
        padding: 10px;
        width: 30%;
        height: auto;
        margin-bottom: 20px;
        box-sizing: border-box;
    }

    .sqare img {
        width: 100%;
        height: 130px;
        border-radius: 8px;
    }

    .sqare p {
        font-weight: bold;
        padding: 10px;
        font-size: 15px;
        opacity: 80%;
    }

    .date p {
        opacity: 70%;
        font-size: 13px;
        padding: 10px;
    }

    /* Initially hide extra rows after the 8th */
    .hidden {
        display: none;
    }

    #showMoreBtn {
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #7c73e6;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    /* Mobile styles */
    @media only screen and (max-width: 768px) {
        .cont2 {
            flex-direction: column;
        }

        .category {
            width: 100%;
            margin-bottom: 20px;
        }

        .content {
            width: 100%;
        }

        .sqare {
            width: 100%;
            margin-bottom: 15px;
        }
    }
</style>

<body>
<?php
include("nav.php");
?>

<div class="container">
    <div class="cont2">
        <!-- Categories on the Left -->
        

        <!-- Content Grid on the Right -->
        <div class="content">
            <div class="grid-container" id="gridContainer">
                <?php
                // Query to get the tiger data
                $query = "SELECT * FROM `tiger` where category='lifestyle'";
                $sql = mysqli_query($conn, $query);
                $counter = 0;

                while ($result = mysqli_fetch_assoc($sql)) {
                    $counter++;
                    // Apply 'hidden' class after the 8th item
                    $class = ($counter > 8) ? 'hidden' : '';
                ?>
                    <div class="sqare <?php echo $class; ?>">
                        <img src="<?php echo $result['image_path']; ?>" alt="Image">
                        <a href="blog.php?id=<?php echo $result['id']?>" id="anchor">
                            <p><?php echo $result['title']; ?></p>
                        </a>
                        <div class="date">
                            <p><?php echo $result['created_at']; ?></p>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>

            <!-- Show More Button -->
            <button id="showMoreBtn">Show More</button>
        </div>
    </div>
</div>

<script>
    document.getElementById('showMoreBtn').addEventListener('click', function() {
        // Select all hidden sqare elements
        var hiddenItems = document.querySelectorAll('.sqare.hidden');

        // Loop through and remove the hidden class
        hiddenItems.forEach(function(item) {
            item.classList.remove('hidden');
        });

        // Hide the Show More button after all items are shown
        this.style.display = 'none';
    });
</script>

<?php
include("footer.php");
?>
<?php
include("down.php");
?>
</body>
