<?php
include_once "db_connection.php";

$selected_date = $_GET["selected_date"];

$sql =
    "SELECT name, release_date FROM cars WHERE ID_Cars NOT IN ( SELECT FID_Car FROM rent WHERE :selected_date BETWEEN date_start AND date_end );";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(":selected_date", $selected_date);
$stmt->execute();

$cars = $stmt->fetchAll(PDO::FETCH_ASSOC);


if (empty($cars)) {
    echo "<h1>There are no cars for $selected_date</h1>";
} else {
    echo "Free cars on $selected_date:<br>";

    foreach ($cars as $car) {
        echo $car["name"] . " - " . $car["release_date"] . "<br>";
    }
}
?>
