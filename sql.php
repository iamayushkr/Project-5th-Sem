<?php

$sql = "CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
)";

$host='localhost';
$username='root';
$password='';
$dbase='cinema_db.sql';

$conn = mysqli_connect($host,$username,$password,$dbase);

if($conn){
    echo "Successfully connected to server";
}
else{
    echo "Failed";
}

print(mysqli_query($conn,$sql));


?>
