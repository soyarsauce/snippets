<?php
if (defined('EMAIL_HELPERS_SET') && EMAIL_HELPERS_SET) {
  // SMTP Settings
  // Define these constants in _ss_environment.php
  $encryption = 'tls'; // use tls
  $charset = 'UTF-8'; // use specified charset if set
  $host = EMAIL_HELPERS_HOST; // e.g. smtp.server.com - you can specify a port as in 'yourserver.com:587'
  $user = EMAIL_HELPERS_USER; // username for smtp auth
  $pass = EMAIL_HELPERS_PASS; // pass for smtp auth
  $mailer = new SmtpMailer($host, $user, $pass, $encryption, $charset);
  Email::set_mailer($mailer);
}