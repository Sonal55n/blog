<?php
include("top.php");
?>
<style>

    .cont{
        text-align:center;
        margin:8%;
    }
    .logo{
        display:flex;
        justify-content:center;

    }
    .nav{
        margin-top:15px;
        display:flex;
        justify-content:center;
        background:#363b4e;
        padding:10px;
        border-radius:8px;
        
        



    }
    .nav li{
        list-style-type:none;
        color:white;
        
        margin-left:20px;
        font-family:verdana;


    }
    .nav li:hover{
        color:#626fe6;


    }

    @media only screen and (max-width: 768px) {
        .nav{
            display: flex;
            flex-direction: column;
        }
    }

    </style>

</head>
<body>


<div class="container">
    <div class="cont">
    <div class="logo">
        <img src="logom.jpg" style="height:60px;width:auto;">
    </div>
    <div class="nav">
        <a href="index.php"><li class="menu">Home</li></a>
        <a href="about.php"><li class="menu">About us</li></a>
        <a href="condition.php"><li class="menu">Terms & condition</li></a>
        <a href="policy.php"><li class="menu">Privacy policy</li></a>
        <a href="login.php"><li class="menu">Login</li></a>
        <a href="disclaimer.php"><li class="menu">Disclaimer</li></a>
        
        <a href="redirect.php"><li class="menu">Post your article</li></a>
        <a href="guideline.php"><li class="menu">Our Guidelines</li></a>
        <a href="contact.php"><li class="menu">Contact</li></a>
    </div>
    </div>
</div>


<?php
include("down.php");
?>