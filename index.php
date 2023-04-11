<!DOCTYPE html>
<html>
<head>
	<title>Car Rental System</title>
</head>
<body>
	<h1>Welcome to Yegor's Car Rental System</h1>
	<h2>Select what information you want to receive:</h2>
	<ul>
    <h2>Rental income as of the selected date:</h2>
    <li>
        <form action="rental_income.php" method="GET">
		<label for="selected_date">Select Date:</label>
		<input type="date" name="selected_date" id="selected_date">
		<button type="submit">Submit</button>
	</form>
</li>
	<hr>
        <h2>Select a Vendor to view their cars:</h2>
		<li>
			<form action="vendor_cars.php" method="GET">
				<label for="selected_vendor">Select Vendor:</label>
				<select id="selected_vendor" name="selected_vendor">
					<?php
include_once "db_connection.php";

$sql = "SELECT name FROM vendors";
$stmt = $pdo->query($sql);

$vendors = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($vendors as $vendor)
{
    echo "<option value=\"" . $vendor['name'] . "\">" . $vendor['name'] . "</option>";
}
?>
				</select>
				<input type="submit" value="View Cars">
			</form>
		</li>
        <hr>
        <h2>Select a date to see free cars:</h2>
		<li>
			<form action="free_cars.php" method="GET">
				<label for="selected_date">Select a date:</label>
				<input type="date" id="selected_date" name="selected_date" value="<?php echo date('Y-m-d'); ?>">
				<input type="submit" value="View Free Cars">
			</form>
		</li>
	</ul>
</body>
</html>
