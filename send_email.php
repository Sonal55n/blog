<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'PHPMailer/src/Exception.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$mail = new PHPMailer(true); // Enable exceptions

try {
    // SMTP server configuration
    $mail->isSMTP();                                  // Set mailer to use SMTP
    $mail->Host = 'smtp.gmail.com';                   // Specify SMTP server
    $mail->SMTPAuth = true;                           // Enable SMTP authentication
    $mail->Username = 'sonalkumarheroaz@gmail.com';       // SMTP username
    $mail->Password = 'doggxjfgkqdcabnh';          // SMTP password (use an app password, not your normal Gmail password)
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;  // Enable encryption (tls/ssl)
    $mail->Port = 465;                                // TCP port to connect to (Gmail uses 465 or 587)

    // Sender and recipient settings
    $mail->setFrom('sonalkumarheroaz@gmail.com', 'sonal');
    $mail->addAddress('aryankumar55n@gmail.com', 'aryan');  // Add a recipient

    // Email content
    $mail->isHTML(true);                              // Set email format to HTML
    $mail->Subject = 'Test Email Subject';
    $mail->Body    = '<h1>This is the HTML message body</h1><p>This is a test email.</p>';
    $mail->AltBody = 'This is the plain text body for non-HTML mail clients'; // Fallback for plain text clients

    // Send email
    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
?>
