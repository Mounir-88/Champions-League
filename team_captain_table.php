<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Captains</title>
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

        /* Team Captain cards */
        .team-captain-cards {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .team-captain-card {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            overflow: hidden;
            padding: 20px;
            box-sizing: border-box;
            width: 300px; /* Adjust card width as needed */
        }

        .team-captain-photo {
            width: 100%; /* Make photo fit the card */
            height: auto;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .team-captain-info {
            text-align: left;
        }

        .team-name {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .captain-name {
            font-size: 16px;
            color: #ccc;
        }

        /* Back button */
        .back-btn {
			position: absolute;
			top: 20px;
            left: 20px;
            background-color: #041d76;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove underline */
            display: inline-block;
            margin-bottom: 20px; /* Add margin at the bottom */
        }

        .back-btn:hover {
            background-color: #3e1995;
        }
    </style>
</head>
<body>
	<a class="back-btn" href="team.php">Back</a>
    <div class="container">
        <h1>Team Captains</h1>
         <!-- Back button -->
        <div class="team-captain-cards">
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

            // SQL query to retrieve captain's name, team name, and photo path
            $sql = "SELECT t.name AS TeamName, p.player_name AS CaptainName, p.photo_path AS CaptainPhoto
                    FROM Team AS t
                    INNER JOIN Player AS p ON t.captain = p.player_id";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    $teamName = $row["TeamName"];
                    $captainName = $row["CaptainName"];
                    $captainPhoto = $row["CaptainPhoto"];

                    // Display the team captain card
                    echo '<div class="team-captain-card">';
                    echo '<img class="team-captain-photo" src="' . $captainPhoto . '" alt="' . $captainName . '">';
                    echo '<div class="team-captain-info">';
                    echo '<div class="team-name">' . $teamName . '</div>';
                    echo '<div class="captain-name">' . $captainName . '</div>';
                    echo '</div>';
                    echo '</div>';
                }
            } else {
                echo "0 results";
            }

            // Close connection
            $conn->close();
            ?>
        </div>
    </div>
</body>
</html>
