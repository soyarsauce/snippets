<?php
/* What kind of environment is this: development, test, or live (ie, production)? */
define('SS_ENVIRONMENT_TYPE', 'dev');

# Dokku / Heroku
// $url = parse_url(getenv("DATABASE_URL"));
// $host = $url["host"];
// $username = $url["user"];
// $password = $url["pass"];
// $database = substr($url["path"], 1);

/* Database connection */
define('SS_DATABASE_SERVER', $host);
define('SS_DATABASE_NAME', $database);
define('SS_DATABASE_USERNAME', $username);
define('SS_DATABASE_PASSWORD', $password);

//  Configure a default username and password to access the CMS on all sites in this environment. 
define('SS_DEFAULT_ADMIN_USERNAME', 'root');
define('SS_DEFAULT_ADMIN_PASSWORD', 'root');

/* Logs */
$logBasePath = rtrim(dirname(dirname($_SERVER['SCRIPT_FILENAME'])), DIRECTORY_SEPARATOR);
ini_set('log_errors', true);
ini_set('error_log', $logBasePath.'/php_errors.log');
define('MY_SS_ERROR_LOG', $logBasePath.'/silverstripe.log');