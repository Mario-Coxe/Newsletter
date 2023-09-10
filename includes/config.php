<?php
define('DB_SERVER', 'localhost');  // Altere para o endereço do servidor MySQL se não estiver no mesmo servidor
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'newsportal');
$con = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);

// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>
