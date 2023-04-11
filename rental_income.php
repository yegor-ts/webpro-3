<?php
include_once "db_connection.php";

$selected_date = $_GET['selected_date'];

$sql = "SELECT SUM(cost) AS total_rental_income FROM rent WHERE date_end <= :selected_date";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':selected_date', $selected_date);
$stmt->execute();

$result = $stmt->fetch(PDO::FETCH_ASSOC);
$total_rental_income = round($result['total_rental_income'], 2);

echo "<b>Total rental income as of $selected_date:</b><u><i>$total_rental_income</i></u>";
?>