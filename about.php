<?php
include("top.php");
?>
<style>
    .about-section {
        margin:20px;
    background-color: white;
    padding: 4rem 0;
    /* margin-top: -5rem; */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.about-section h2 {
    text-align: center;
    font-size: 2.2rem;
    margin-bottom: 2rem;
    color: purple;
}

.about-section h3 {
    margin-top: 2rem;
    color: purple;
}

.about-section p {
    font-size: 1.1rem;
    margin-bottom: 1rem;
}

.about-section ul {
    list-style: disc;
    margin-left: 2rem;
    margin-bottom: 2rem;
}

.about-section ul li {
    margin-bottom: 0.5rem;
}

.cta-button {
    display: inline-block;
    background-color: purple;
    color: white;
    padding: 0.75rem 2rem;
    text-align: center;
    border-radius: 5px;
    text-decoration: none;
    font-size: 1.1rem;
    margin-top: 2rem;
}

.cta-button:hover {
    background-color: #45a049;
}
</style>
</head>
<body>
<?php
include("nav.php");
?>
 <section class="about-section">
        <div class="container">
            <h2>About Us</h2>
            <p>Welcome to <strong>BestGuestPost</strong>! We are committed to providing a platform where quality guest
                posts meet a wide audience. Our goal is to help writers, bloggers, and content creators share their
                insights, expertise, and knowledge with a broader community while offering readers valuable content
                across various topics.</p>

            <h3>Our Mission</h3>
            <ul>
                <li><strong>Empower Writers:</strong> We provide a space for writers to showcase their skills and gain
                    recognition in their fields.</li>
                <li><strong>Deliver Valuable Content:</strong> Our site curates and shares engaging and informative
                    articles across a range of subjects.</li>
                <li><strong>Facilitate Knowledge Exchange:</strong> We connect content creators with readers, ensuring
                    great ideas get the attention they deserve.</li>
            </ul>

            <h3>Why Choose Us?</h3>
            <p>We offer a wide audience, maintain high editorial standards, and foster a supportive community to help
                you focus on writing the best content possible.</p>

            <h3>Get Involved!</h3>
            <p>Whether you're an experienced blogger or just starting, we welcome you to submit your articles and become
                a part of the BestGuestPost community. Join us on our journey to create a hub of valuable insights and
                ideas.</p>

            <a href="#" class="cta-button">Contact Us</a>
        </div>
    </section>

    <?php
include("footer.php");
?>
<?php
include("down.php");
?>