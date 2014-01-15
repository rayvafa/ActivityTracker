<?php
/**
 * Created by IntelliJ IDEA.
 * User: ray
 * Date: 10/01/2014
 * Time: 3:19 PM
 */

//$activity = $_POST["activity-list"];
$tracker = $_POST["tracker-list"];
$quantity = $_POST["quantity"];
//$pass = $_POST["password"];
// Create connection
$con = mysqli_connect("203.170.85.245", "ramoonph_test", "Iam21777", "ramoonph_test");

// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$sql = "INSERT INTO track_point ( tracker_id, quantity, track_date) VALUES ( '$tracker', '$quantity', Now())";
//echo $sql;
if (!mysqli_query($con, $sql)) {
    die('Error: ' . mysqli_error($con));
}

mysqli_close($con);
?>
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Track - Activity Tracker</title>
    <meta name="description" content="Tracking my activities">
    <meta name="author" content="Ray Vafa">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <link rel="stylesheet" href="../../styles/style.min.css">
    <script src="../../scripts/libs.min.js"></script>
</head>

<body>
<div class="container">
	<div class="list-group">
		<div class="list-group-item alert alert-success">
			1 record added
		</div>
		<a href="../../index.html" class="list-group-item">Track another activity</a>
		<div class="list-group-item">
			Go to result page.
		</div>
	</div>
</div>
<script src="../../scripts/scripts.min.js"></script>
</body>
</html>
