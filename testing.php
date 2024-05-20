<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player Photo</title>
</head>
<body>
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

    // Player name to retrieve photo for
    $playerName = "Anthony Modeste"; // Change this to the player's name you want to retrieve the photo for

    // SQL query to retrieve player's photo path
    $sql = "SELECT Photo_path FROM Player WHERE player_name = '$playerName'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Output data of each row
        while ($row = $result->fetch_assoc()) {
            $photoPath = $row["Photo_path"];
            echo '<img src="' . $photoPath . '" alt="' . $playerName . '">';
        }
    } else {
        echo "0 results";
    }

    // Close connection
    $conn->close();
    ?>
</body>
</html>
