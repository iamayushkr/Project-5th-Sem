<?php
$host = "localhost"; /* Host name */
$user = "root"; /* User */
$password = ""; /* Password */
$dbname = "cinema_db.sql"; /* Database name */

$con = mysqli_connect("$host", "$user", "$password", "$dbname", 3306);
// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
?>  