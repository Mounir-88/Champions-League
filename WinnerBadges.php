<?php
// Database connection parameters
$servername = "localhost";
$username = "root"; 
$password = ""; 
$database = "championsleague"; 

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to retrieve team names and badge photos
$sql = "SELECT name, photos FROM Team WHERE name IN ('Mancity', 'Inter')";
$result = $conn->query($sql);

// Fetch data and generate HTML content
while ($row = $result->fetch_assoc()) {
    $teamName = $row["name"];
    $photos = explode(',', $row["photos"]); // Split the photos string into an array

    // Display the first badge photo
    echo '<img src="' . $photos[0] . '" alt="' . $teamName . ' Badge">';
}

// Close connection
$conn->close();
?>
