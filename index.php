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
    .refer{
        color:blue;
        font-weight:bold;
        margin-top:5px;
    }
    .refer:hover{
        color:purple;
    }
    .extra{
        margin-bottom:15px;
    }
</style>

<body>
<?php
include("nav.php");
?>

<div class="container">
    <div class="cont2">
        <!-- Categories on the Left -->
        
        <div class="category">

        <div class="extra">
            <h1>Important links</h1>
           <a href="https://sunshinearticles.com"> <li class="refer">www.sunshinearticle.com</li></a>
           <a href="https://collectionofblogs.com"><li class="refer">www.collectionofblogs.com</li></a>
           <a href=""> <li class="refer">Believe in yourself</li></a>
           <a href=""> <li class="refer">Dream big, act bold</li></a>
           <a href=""> <li class="refer">You got this</li></a>
           <a href=""> <li class="refer">Keep moving forward</li></a>
           <a href=""> <li class="refer">Stay positive, always</li></a>
           <a href=""> <li class="refer">Make it happen</li></a>
           <a href=""> <li class="refer">Choose joy today</li></a>
           <a href=""> <li class="refer">Trust the process</li></a>
        </div>

            <h1>Categories</h1>
            <ul>
               <a href="arch.php"> <li class="list">Architecture</li></a>
               <a href="art.php"> <li class="list">Art & Entertainment</li></a>
               <a href="blog2.php"> <li class="list">Blog</li></a>
               <a href="bus.php"> <li class="list">Business</li></a>
               <a href="car.php"> <li class="list">Careers</li></a>
               <a href="edu.php"> <li class="list">Education</li></a>
               <a href="fin.php"> <li class="list">Finance</li></a>
               <a href="food.php"> <li class="list">Food & Drink</li></a>
               <a href="foo.php"> <li class="list">Food</li></a>
               <a href="gam.php"> <li class="list">Gaming</li></a>
               <a href="hea.php"> <li class="list">Health & Fitness</li></a>
               <a href="life.php"> <li class="list">Lifestyle</li></a>
               <a href="mus.php"> <li class="list">Music</li></a>
               <a href="news.php"> <li class="list">News & Society</li></a>
               <a href="real.php"> <li class="list">Real Estate</li></a>
               <a href="spo.php"> <li class="list">Sports</li></a>
               <a href="tech.php"> <li class="list">Technology</li></a>
               <a href="tra.php"> <li class="list">Travel</li></a>
               
                
                 <a href="hom.php"> <li class="list">Home & family</li></a>
                  <a href="law.php"> <li class="list">Law</li></a>
                   <a href="per.php"> <li class="list">Personal</li></a>
                    <a href="pho.php"> <li class="list">Photography</li></a>
                     <a href="rel.php"> <li class="list">Relationship</li></a>
                      <a href="sel.php"> <li class="list">Self improvment</li></a>
                       <a href="sho.php"> <li class="list">Shopping</li></a>
                        <a href="spi.php"> <li class="list">spirituality</li></a>
                         <a href="unc.php"> <li class="list">Uncategorized</li></a>
                    
                <li class="list">Other</li>
            </ul>
        </div>

        <!-- Content Grid on the Right -->
        <div class="content">
            <div class="grid-container" id="gridContainer">
                <?php
                // Query to get the tiger data
                $query = "SELECT * FROM `tiger` ORDER BY `id` DESC";
                $sql = mysqli_query($conn, $query);
                $counter = 0;

                while ($result = mysqli_fetch_assoc($sql)) {
                    $counter++;
                    // Apply 'hidden' class after the 8th item
                    $class = ($counter > 9) ? 'hidden' : '';
                ?>
                    <div class="sqare <?php echo $class; ?>">
                        <img src="<?php echo $result['image_path']; ?>" alt="Image">
                        <a href="blog.php?id=<?php echo $result['id']?>" id="anchor">
                            <p><?php echo $result['title']; ?></p>
                        </a>
                        <div class="date">
                            <p><?php echo $result['created_at']; ?></p>
                        </div>
                         
                            <p style="font-size:13px;opacity:80%;"><?php echo $result['name']; ?></p>
                        
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
