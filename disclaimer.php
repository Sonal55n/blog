<?php
include("top.php");
?>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    color: #333;
    margin: 0;
    padding: 0;
  }
  
  h1 {
    font-weight: bold;
    font-size: 28px;
    color: #0056b3;
    text-align: center;
    margin-bottom: 20px;
  }

  h2 {
    font-size: 22px;
    color: #333;
    margin-bottom: 10px;
    border-bottom: 2px solid #ddd;
    padding-bottom: 5px;
  }

  p {
    line-height: 1.6;
    font-size: 16px;
    margin-bottom: 20px;
    color: #555;
  }

  .container {
    max-width: 900px;
    margin: 0 auto;
    background-color: #fff;
    padding: 40px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    margin-top: 20px;
  }

  a {
    color: #0056b3;
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }

  @media (max-width: 768px) {
    .container {
      padding: 20px;
    }

    h1 {
      font-size: 24px;
    }

    h2 {
      font-size: 20px;
    }
  }
</style>
</head>
<body>

<?php
include("nav.php");
?>

<div class="container">
    <h1>Disclaimer</h1>
    
    <section>
        <h2>General Information</h2>
        <p>
            The information provided on this website is for general informational purposes only. While we strive to ensure that the information presented is accurate and up-to-date, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability, or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose.
        </p>
    </section>

    <section>
        <h2>Professional Advice</h2>
        <p>
            This website may contain articles or posts that offer insights or advice on various topics. However, none of the information should be construed as professional, legal, financial, or medical advice. Always seek the advice of a qualified professional before making decisions based on the content of this website.
        </p>
    </section>

    <section>
        <h2>External Links Disclaimer</h2>
        <p>
            Our website may contain links to external websites that are not provided or maintained by us. We do not guarantee the accuracy, relevance, timeliness, or completeness of any information on these external websites. By following these links, you do so at your own risk.
        </p>
    </section>

    <section>
        <h2>Affiliate Disclaimer</h2>
        <p>
            Some of the links on this website may be affiliate links, meaning we may earn a commission if you click through and make a purchase. This is at no additional cost to you. We only recommend products or services that we believe will add value to our readers.
        </p>
    </section>

    <section>
        <h2>Views Expressed</h2>
        <p>
            The views and opinions expressed in the articles and blog posts on this website are those of the authors and do not necessarily reflect the official policy or position of the website. We do not endorse any opinions expressed in the content.
        </p>
    </section>

    <section>
        <h2>Limitation of Liability</h2>
        <p>
            Under no circumstances shall we be liable for any loss or damage, including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website.
        </p>
    </section>

    <section>
        <h2>Changes to the Disclaimer</h2>
        <p>
            We reserve the right to update this disclaimer at any time. When we do, we will revise the updated date at the bottom of this page. We encourage you to frequently check this page for any changes.
        </p>
    </section>

    <section>
        <h2>Contact Us</h2>
        <p>
            If you have any questions about this disclaimer, please <a href="contact.php">contact us</a>.
        </p>
    </section>

    <p style="text-align: right; font-size: 0.9em;">
        Last updated: August 30, 2024
    </p>
</div>

<?php
include("down.php");
?>

</body>
</html>
