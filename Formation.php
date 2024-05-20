<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formations</title>
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

        /* Formation cards section */
        .formation-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .formation-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
            width: 300px;
            position: relative;
            transition: all 0.3s ease;
        }

        .formation-card:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            cursor: pointer;
        }

        .formation-card img {
            width: 100%;
            height: auto;
            object-fit: cover;
        }

        .formation-card-details {
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

        /* Footer */
        footer {
            background-color: #041d76;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: auto; /* Align footer to the bottom of the page */
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
    <div class="container">
        <h1>Formations</h1>
        <div class="formation-cards">
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

            // SQL query to retrieve formations and their photos
            $sql = "SELECT * FROM Formation";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each formation
                while ($row = $result->fetch_assoc()) {
                    $formationName = $row["formation_name"];
                    $formationPhotoPath = $row["photos"];
                    // Display the formation card
                    echo '<div class="formation-card">';
                    echo '<img src="' . $formationPhotoPath . '" alt="' . $formationName . '">';
                    echo '<div class="formation-card-details">';
                    echo '<h2>' . $formationName . '</h2>';
                    echo '</div>';
                    echo '</div>';
                }
            } else {
                echo "0 formations found.";
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
