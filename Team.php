<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Photos</title>
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

        /* Navigation */
        .topnav {
            background-color: #041d76;
            overflow: hidden;
            margin-bottom: 20px; /* Add margin at the bottom */
        }

        .topnav a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #3e1995;
        }

        .topnav .icon {
            display: none;
        }

        @media screen and (max-width: 600px) {
            .topnav a:not(:first-child), .dropdown .dropbtn {
                display: none;
            }
            .topnav a.icon {
                float: right;
                display: block;
            }
        }

        /* Team Photos section */
        .team-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .team-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
            width: 200px; /* Fixed width for each card */
            height: 300px; /* Fixed height for each card */
            position: relative;
            transition: all 0.3s ease;
        }

        .team-card:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            cursor: pointer;
        }

        .team-card img {
            width: 100%;
            height: 70%; /* Adjust image height */
            object-fit: cover;
        }

        .team-card-name {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            padding: 10px 0;
            background-color: rgba(4, 29, 118, 0.8); /* Same as background color of navigation */
            text-align: center;
            font-weight: bold;
            color: black; /* Black text */
            margin: 0;
        }

        /* Footer */
        footer {
            background-color: #041d76;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }

        /* Button */
        .show-foundation-btn, .show-formation-btn, .show-captain-btn, .show-sponsorship-btn{
            background-color: #041d76;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove underline */
            display: inline-block; /* Display buttons on the same line */
            margin-right: 10px; /* Add margin between buttons */
            margin-top: 20px; /* Add margin at the top */
            margin-bottom: 20px; /* Add margin at the bottom */
        }

        .show-foundation-btn:hover, .show-formation-btn:hover, .show-captain-btn:hover, show-sponsorship-btn:hover {
            background-color: #3e1995;
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
    <header>
        <div class="topnav" id="myTopnav">
            <a href="HomePage.php" class="active">Home</a>
            <a href="Stadium.php">Stadiums</a>
            <a href="Team.php">Teams</a>
            <a href="Matches.php">Matches</a>
            <a href="Players.php">Players</a>
            <a href="Referee.php">Referees</a>
            <a href="SocialMedia.php">Social Media</a>
            <a href="Formation.php">Formations</a>
            <a href="Sponsorship.php">Sponsorship</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
    </header>
    <a class="show-foundation-btn" href="team_foundation_chart.php">Show Team Foundations</a>
    <a class="show-formation-btn" href="team_formation_table.php">Show Team Formations</a>
    <a class="show-captain-btn" href="team_captain_table.php">Show Team Captains</a>
    <a class="show-sponsorship-btn" href="team_sponsorship_table.php">Show Team Sponsorship</a> <!-- New button -->



    <div class="container">
        <div class="team-cards">
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

            // SQL query to retrieve team names and their respective photo paths
            $sql = "SELECT team_id, name, photos FROM Team";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    $teamId = $row["team_id"];
                    $teamName = $row["name"];
                    $teamPhotoPath = $row["photos"];
                    echo '<a href="team_details.php?id=' . $teamId . '" style="text-decoration: none; color: inherit;">'; // Opening anchor tag
                    echo '<div class="team-card">';
                    echo '<img src="' . $teamPhotoPath . '" alt="' . $teamName . '">';
                    echo '<div class="team-card-name">' . $teamName . '</div>';
                    echo '</div>';
                    echo '</a>'; // Closing anchor tag
                }
            } else {
                echo "0 results";
            }

            // Close connection
            $conn->close();
            ?>
        </div>
    </div>

    <footer>
        <p>© 2024 Champions League. All rights reserved.</p>
    </footer>
</body>
</html>
