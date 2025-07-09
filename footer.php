<?php
include("top.php");
?>
<style>

    .most2{
        background:#363b4e;
        color:white;
        display:flex;
        justify-content:space-between;
        padding:5%;
    }
    .black{
        background:black;
        padding:10px;
        color:white;
        display:flex;
        justify-content:space-between;
    }
    .black p{
        margin-left:30px;
        opacity:60%
    }
    #left{
        margin-right:30px;
        opacity:60%
    }
    .foot{
        list-style-type:none;
        margin-top:10px;
    }
    .social img{
        height:40px;
        width:auto;
        margin:8px;
    }
    .social{
        display:flex;
        margin-top:8px;
        margin-bottom:8px;
    }
    </style>
</head>

<body>

<div class="most">
    <div class="most2">
     <div class="two">
      <img src="logom.jpg" style="height:70px;width:auto;margin-left:-20px;background:white;border-radious:4px;padding:4px;">

      <p style="font-weight:bold;font-size:25px;">FOLLOW US</p>
      <div class="social">
        <a href="https://www.facebook.com/profile.php?id=100035834235249"><img src="fb.png" alt=""></a>
        <a href="https://www.instagram.com/ek_anzan_shakh/"><img src="ig.png" alt=""></a>
        <a href="mailto:letenjoylife13@gmail.com"><img src="em.png" alt=""></a>
      </div>
      <p>Get Published & Gain Authority guestpost articles.<br> Let’s you guest post for free. Collaborate<br> with like-minded websites, <br>showcase your knowledge, <br>and grow your brand.</p>
     </div>
     <div class="two">
     <p style="font-weight:bold;font-size:25px;">IMPORTANT LINKS</p></a>
        <a href="about.php"><li class="foot">About us</li></a>
        <a href="condition.php"><li class="foot">Terms & condition</li></a>
        <a href="policy.php"><li class="foot">Privacy policy</li></a>
        <a href="post.php"> <li class="foot">Post your article</li></a>
        <a href="register.php"><li class="foot">sign up</li></a>
     </div>

     

    </div>
    <div class="black">
        <p>copyright @2024 guestpost Articles.</p><p id="left">DESIGN & DEVELOPED BY SITEBRIDE </p>
     </div>
</div>

<?php
include("down.php");
?>