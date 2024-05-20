<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Sponsorship</title>
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

        /* Sponsorship section */
        .sponsorship-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .sponsorship-card {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            padding: 20px;
            box-sizing: border-box;
            width: 300px; /* Adjust card width */
        }

        .sponsor-name {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .team-name {
            font-size: 20px;
        }
		
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
        <h1>Team Sponsorship</h1>
        <div class="sponsorship-cards">
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

            // SQL query to retrieve team names and their respective sponsorship details
            $sql = "SELECT t.name AS TeamName, sp.sponsor_Name AS SponsorName
                    FROM Team t
                    LEFT JOIN SponsorShip sp ON t.team_id = sp.team_id";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    $sponsorName = $row["SponsorName"];
                    $teamName = $row["TeamName"];

                    // Display the sponsorship card
                    echo '<div class="sponsorship-card">';
                    echo '<div class="sponsor-name">' . $sponsorName . '</div>';
                    echo '<div class="team-name">' . $teamName . '</div>';
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
