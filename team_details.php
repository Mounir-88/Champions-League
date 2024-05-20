<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Details</title>
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

        /* Team details section */
        .team-details {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .team-photo {
            width: 45%; /* Adjust width for the left half */
            margin-right: 5%; /* Add margin between the halves */
        }

        .team-photo img {
            width: 100%; /* Make the image fill the container */
            height: auto; /* Maintain aspect ratio */
        }

        .team-info {
            width: 45%; /* Adjust width for the right half */
            text-align: left;
        }

        .team-info h1 {
            margin-top: 0;
        }

        .team-info p {
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
		
		
/* Back button */
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
        }

        .back-button:hover {
            background-color: #3e1995;
        }
    </style>
</head>
<body>
    <header>
        <!-- Navigation menu or back button -->
        <!-- Add your navigation elements here -->
    </header>
        <a href="Team.php" class="back-button">Back</a>

    <div class="container">
<!-- PHP code to fetch and display team details -->
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

// Check if a team ID is provided in the URL
if (isset($_GET['id'])) {
    $team_id = $_GET['id'];

    // SQL query to fetch team details including unique kit colors
    $sql = "SELECT t.*, s.socialMedia_name, std.stadium_name, f.formation_name, p.player_name AS captain_name, 
            GROUP_CONCAT(DISTINCT CASE WHEN k.kitType = 'home' THEN k.kitColor ELSE NULL END) AS home_kit_colors,
            GROUP_CONCAT(DISTINCT CASE WHEN k.kitType = 'away' THEN k.kitColor ELSE NULL END) AS away_kit_colors
            FROM Team t
            LEFT JOIN SocialMedia s ON t.socialMedia_ID = s.socialMedia_id
            LEFT JOIN Stadium std ON t.stadium_id = std.stadium_id
            LEFT JOIN Formation f ON t.formation_id = f.formation_id
            LEFT JOIN Player p ON t.captain = p.player_id
            LEFT JOIN KitColor k ON t.team_id = k.team_id
            WHERE t.team_id = $team_id
            GROUP BY t.team_id"; // Grouping by team_id to ensure only one row per team

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Output data of the team
        while ($row = $result->fetch_assoc()) {
            // Display team details
            echo '<div class="team-details">';
            echo '<div class="team-photo">';
            echo '<img src="' . $row["photos"] . '" alt="' . $row["name"] . '">';
            echo '</div>';
            echo '<div class="team-info">';
            echo '<h1>' . $row["name"] . '</h1>';
            echo '<p><strong>Team ID:</strong> ' . $row["team_id"] . '</p>';
            echo '<p><strong>Captain:</strong> ' . $row["captain_name"] . '</p>';
            echo '<p><strong>Founded:</strong> ' . $row["founded"] . '</p>';
            echo '<p><strong>Social Media:</strong> ' . $row["socialMedia_name"] . '</p>';
            echo '<p><strong>Country:</strong> ' . $row["country"] . '</p>';
            echo '<p><strong>Stadium:</strong> ' . $row["stadium_name"] . '</p>';
            echo '<p><strong>Formation:</strong> ' . $row["formation_name"] . '</p>';
            // Display kit colors for home and away kits
            echo '<p><strong>Kit Colors:</strong></p>';
            echo '<ul>';
            // Output unique home kit colors
            if (!empty($row["home_kit_colors"])) {
                echo '<li><strong>Home:</strong> ' . $row["home_kit_colors"] . '</li>';
            }
            // Output unique away kit colors
            if (!empty($row["away_kit_colors"])) {
                echo '<li><strong>Away:</strong> ' . $row["away_kit_colors"] . '</li>';
            }
            echo '</ul>';
            echo '</div>';
            echo '</div>';
        }
    } else {
        echo "No team found with the provided ID.";
    }
} else {
    echo "No team ID provided.";
}

// Close connection
$conn->close();
?>





    </div>

</body>
</html>
