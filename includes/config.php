<?php
// Environment-aware database configuration
if (getenv('RAILWAY_ENVIRONMENT') || isset($_ENV['MYSQLHOST'])) {
    // Production environment (Railway)
    include_once 'config.production.php';
} else {
    // Development environment
    $host = "localhost";
    $user = "root";
    $pass = "";
    $db = "cars";
    
    $conn = new mysqli($host, $user, $pass, $db);
    if($conn->connect_error){
        echo "Failed:" . $conn->connect_error;
    }
}
?>
