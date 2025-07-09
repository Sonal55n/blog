<?php
include("top.php");
?>
<style>
  .icons img {
    width: 60px; /* Adjust size */
    height: 60px; /* Adjust size */
    margin: 0 15px; /* Space between icons */
  }
  .icons {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
  }

  @media (max-width: 640px) {
    .icons img {
      width: 50px;
      height: 50px;
      margin: 0 10px;
    }
  }
</style>
</head>
<body>

<?php
include("nav.php");
?>

<div class="container mx-auto p-6 text-center">
  <h1 class="text-4xl font-semibold mb-8">Contact Us</h1>
  
  <!-- Social Media Icons Section -->
  <div class="icons">
    <a href="https://www.facebook.com/profile.php?id=100035834235249" target="_blank">
      <img src="fb.png" alt="Facebook">
    </a>
    <a href="https://www.instagram.com/ek_anzan_shakh/" target="_blank">
      <img src="ig.png" alt="Instagram">
    </a>
    <a href="mailto:letenjoylife13@gmail.com">
      <img src="em.png" alt="Email">
    </a>
  </div>
  
  <!-- Add any other content below if needed -->

</div>

<?php
include("footer.php");
?>
<?php
include("down.php");
?>
