<?php
// Production database configuration for Railway
$host = $_ENV['MYSQLHOST'] ?? 'localhost';
$user = $_ENV['MYSQLUSER'] ?? 'root';
$pass = $_ENV['MYSQLPASSWORD'] ?? '';
$db = $_ENV['MYSQLDATABASE'] ?? 'cars';
$port = $_ENV['MYSQLPORT'] ?? '3306';

// Create connection with error handling
try {
    $conn = new mysqli($host, $user, $pass, $db, $port);
    
    if ($conn->connect_error) {
        error_log("Database connection failed: " . $conn->connect_error);
        die("Database connection failed. Please try again later.");
    }
    
    // Set charset to prevent encoding issues
    $conn->set_charset("utf8");
    
} catch (Exception $e) {
    error_log("Database connection error: " . $e->getMessage());
    die("Database connection failed. Please try again later.");
}
?>
