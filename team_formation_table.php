<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Formations</title>
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

        /* Team Formation section */
        .team-formation-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start;
            gap: 20px;
            padding: 20px;
        }

        .team-formation-card {
            width: calc(50% - 20px); /* Adjust width for two cards in a row */
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            overflow: hidden;
            padding: 10px;
            box-sizing: border-box;
            position: relative; /* Added position relative */
        }

        .team-formation-card img {
            width: 100%; /* Make photo fill the card */
            height: auto;
            border-radius: 8px; /* Add border radius to maintain card's rounded corners */
        }

        .team-formation-info {
            position: absolute; /* Position information inside the card */
            bottom: 10px;
            left: 10px;
            color: white;
        }

        .team-name {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 5px; /* Adjust margin */
        }

        .formation-name {
            font-size: 16px;
            color: #ccc;
        }

        /* Back button */
        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
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
    <div class="container">
        <a href="Team.php" class="back-button">Back</a>
        <h1>Team Formations</h1>
        <div class="team-formation-cards">
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

            // SQL query to retrieve team names, formation names, and photos of the formation
            $sql = "SELECT t.name AS TeamName, f.formation_name AS FormationName, f.photos AS FormationPhoto
                    FROM Team AS t
                    INNER JOIN Formation AS f ON t.formation_id = f.formation_id";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    $teamName = $row["TeamName"];
                    $formationName = $row["FormationName"];
                    $formationPhoto = $row["FormationPhoto"];

                    // Display the team formation card
                    echo '<div class="team-formation-card">';
                    echo '<img src="' . $formationPhoto . '" alt="' . $formationName . '">';
                    echo '<div class="team-formation-info">';
                    echo '<div class="team-name">' . $teamName . '</div>';
                    echo '<div class="formation-name">' . $formationName . '</div>';
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
