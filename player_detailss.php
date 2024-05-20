<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player Details</title>
    <style>
        /* Global styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #4b0082, #003399); /* Diagonal gradient background */
            color: white;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Player details section */
        .player-details {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .player-photo {
            width: 45%; /* Adjust width for the left half */
            margin-right: 5%; /* Add margin between the halves */
        }

        .player-photo img {
            width: 100%; /* Make the image fill the container */
            height: auto; /* Maintain aspect ratio */
            border-radius: 8px; /* Add border radius */
        }

        .player-info {
            width: 45%; /* Adjust width for the right half */
            text-align: left;
        }

        .player-info h1 {
            margin-top: 0;
        }

        .player-info p {
            margin: 10px 0;
        }

        /* Footer */
        footer {
            background-color: #041d76;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: auto; /* Align footer to the bottom of the page */
        }

        .back-button {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: #041d76;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove underline */
        }

        .back-button:hover {
            background-color: #3e1995;
        }
    </style>
</head>
<body>
    <header>
        <!-- Navigation menu or back button -->
        <a href="Players.php" class="back-button">Back</a>
    </header>

    <div class="container">
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

// Check if a player ID is provided in the URL
if (isset($_GET['id'])) {
    $player_id = $_GET['id'];

    // SQL query to fetch player details along with team information
    $sql = "SELECT Player.*, Team.name AS team_name 
            FROM Player 
            LEFT JOIN Team ON Player.team_id = Team.team_id 
            WHERE Player.player_id = $player_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Output data of the player
        while ($row = $result->fetch_assoc()) {
            // Display player details
            echo '<div class="player-details">';
            echo '<div class="player-photo">';
            echo '<img src="' . $row["Photo_path"] . '" alt="' . $row["player_name"] . '">';
            echo '</div>';
            echo '<div class="player-info">';
            echo '<h1>' . $row["player_name"] . '</h1>';
            echo '<p><strong>Date of Birth:</strong> ' . $row["dob"] . '</p>';
            echo '<p><strong>Nationality:</strong> ' . $row["Nationality"] . '</p>';
            echo '<p><strong>Position:</strong> ' . $row["Position"] . '</p>';
            echo '<p><strong>Shirt Number:</strong> ' . $row["Shirt_Number"] . '</p>';
            echo '<p><strong>Team:</strong> ' . $row["team_name"] . '</p>';
            // Add more details as needed
            echo '</div>';
            echo '</div>';
        }
    } else {
        echo "No player found with the provided ID.";
    }
} else {
    echo "No player ID provided.";
}

// Close connection
$conn->close();
?>

    </div>
</body>
</html>
