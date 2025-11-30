<?php
$servername = "localhost";
$username   = "Muhsina";
$password   = "";
$dbname     = "protein_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected successfully<br>";
}

$id    = $_POST['pid'];
$name  = $_POST['pname'];
$desc  = $_POST['pdesc'];

$sql = "INSERT INTO protein_db (PID, PNAME, PDESC)
        VALUES ('$id', '$name', '$desc')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
