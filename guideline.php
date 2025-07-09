<?php
include("top.php");
?>
<style>
  body {
    font-family: 'Helvetica Neue', sans-serif;
    background-color: #f9f9f9;
    color: #333;
    margin: 0;
    padding: 0;
  }

  .container {
    max-width: 900px;
    margin: 40px auto;
    background-color: #fff;
    padding: 30px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
  }

  h1 {
    font-size: 32px;
    font-weight: bold;
    color: #0056b3;
    text-align: center;
    margin-bottom: 20px;
  }

  section {
    margin-bottom: 40px;
  }

  h2 {
    font-size: 22px;
    color: #333;
    margin-bottom: 10px;
    border-bottom: 2px solid #eee;
    padding-bottom: 5px;
  }

  p {
    font-size: 16px;
    line-height: 1.7;
    color: #555;
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
      margin: 20px;
    }

    h1 {
      font-size: 26px;
    }

    h2 {
      font-size: 20px;
    }

    p {
      font-size: 14px;
    }
  }
</style>
</head>
<body>

<?php
include("nav.php");
?>

<div class="container">
    <h1>Guidelines for Article Submission</h1>
    
    <section>
        <h2>1. Content Quality</h2>
        <p>
            All articles submitted must be well-written, original, and informative. We encourage authors to write engaging content that provides value to our readers. Please avoid submitting duplicate content or content that has been published elsewhere.
        </p>
    </section>

    <section>
        <h2>2. Originality</h2>
        <p>
            Plagiarism is strictly prohibited. Ensure that your article is unique and written by you. If you're citing sources or referencing other works, be sure to give proper credit and include references where appropriate.
        </p>
    </section>

    <section>
        <h2>3. Word Count</h2>
        <p>
            Articles should be a minimum of 800 words. However, we encourage longer articles that provide in-depth analysis or offer detailed information on a subject.
        </p>
    </section>

    <section>
        <h2>4. Formatting and Structure</h2>
        <p>
            Break your content into paragraphs, use headings to organize sections, and use bullet points or numbered lists where necessary. This helps make your content more readable and scannable for our audience.
        </p>
    </section>

    <section>
        <h2>5. Image Usage</h2>
        <p>
            Feel free to include images in your articles to make them more visually appealing. Ensure that the images are high quality, relevant to the content, and properly attributed if they are not your own.
        </p>
    </section>

    <section>
        <h2>6. Linking Policy</h2>
        <p>
            You may include a maximum of 2 outbound links within your article. These links should be relevant and add value to the reader's understanding. Affiliate links or promotional links are not allowed.
        </p>
    </section>

    <section>
        <h2>7. Editing and Approval</h2>
        <p>
            All submitted articles will be reviewed by our editorial team before being published. We reserve the right to edit content for grammar, style, and clarity. If significant changes are needed, we may send the article back to you for revision.
        </p>
    </section>

    <section>
        <h2>8. Compliance with Legal and Ethical Standards</h2>
        <p>
            Articles should not contain any defamatory, offensive, or illegal content. Any submission that violates the law or our guidelines will be rejected.
        </p>
    </section>

    <section>
        <h2>9. Submission Process</h2>
        <p>
            To submit your article, please use the submission form available on our website. Make sure to double-check your work for errors before submitting. You will receive a confirmation once your article is under review.
        </p>
    </section>

    <section>
        <h2>10. Contact Us</h2>
        <p>
            If you have any questions about the submission process or guidelines, feel free to <a href="contact.php">contact us</a>.
        </p>
    </section>
</div>

<?php
include("down.php");
?>

</body>
</html>
