<?php
include_once "db_connection.php";

$selected_vendor = $_GET['selected_vendor'];

$sql = "SELECT name, release_date, Race as race  FROM cars WHERE FID_Vendors IN (SELECT ID_Vendors FROM vendors WHERE name = :selected_vendor)";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':selected_vendor', $selected_vendor);
$stmt->execute();

$cars = $stmt->fetchAll(PDO::FETCH_ASSOC);


if (empty($cars)) {
    echo "<h1>There are no cars with selected Vendor. Please, pick another one.</h1>";
} else {
    echo "Cars of $selected_vendor:<br>";

    foreach ($cars as $car) {
    echo $car['name'] . ", released on " . $car['release_date'] . ", with " . $car['race'] . " race <br>";
  }
}
?>