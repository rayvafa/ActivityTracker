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
$con=mysqli_connect("203.170.85.245","ramoonph_test","Iam21777","ramoonph_test");

// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$sql = "INSERT INTO track_point ( tracker_id, quantity, track_date) VALUES ( '$tracker', '$quantity', Now())";
//echo $sql;
if (!mysqli_query($con,$sql))
{
    die('Error: ' . mysqli_error($con));
}
echo "1 record added";

mysqli_close($con);
?>
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Track - Activity Tracker</title>
    <meta name="description" content="Tracking my activities">
    <meta name="author" content="Ray Vafa">

    <link rel="stylesheet" href="styles/style.min.css">
    <script src="scripts/libs.min.js"></script>
</head>

<body>
<br/>
<br/>
<br/>
<div><a href="../../index.html">Track another activity</a></div>
<br/>
<div>Go to result page.</div>

<script src="scripts/scripts.min.js"></script>
</body>
</html>
