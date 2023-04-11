<?php
$host = "localhost";
$dbname = "webpro-2";
$username = "root";
$password = "";

try {
  $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);

  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    
  echo "Error connecting to the database: " . $e->getMessage();
  exit();
}
?>