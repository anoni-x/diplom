<?php
$servername = "mysql.hostinger.ru";
$username = "u215690148_vasya";
$password = "*qwertty.=";
$dbname = "u215690148_dipm";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name FROM competent";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo $row["name"]. "<br> <br>
";
}
} else {
echo "0 results";
}
$conn->close();
?>