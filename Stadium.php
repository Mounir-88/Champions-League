<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stadiums</title>
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

        /* Stadium cards section */
        .stadium-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .stadium-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
            width: 250px;
            height: 150px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
        }

        .stadium-card:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            cursor: pointer;
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
		
		.show-total-followers-btn{
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

        .show-total-followers-btn:hover{
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
	
			        <a class="show-total-followers-btn" href="Capacity.php">Capacity</a>


    <div class="container">
        <h1>Stadiums</h1>
        <div class="stadium-cards">
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

            // SQL query to retrieve stadium names
            $sql = "SELECT stadium_name FROM Stadium";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each stadium
                while ($row = $result->fetch_assoc()) {
                    $stadiumName = $row["stadium_name"];
                    // Display the stadium card
                    echo '<div class="stadium-card">';
                    echo '<h2>' . $stadiumName . '</h2>';
                    echo '</div>';
                }
            } else {
                echo "0 stadiums found.";
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
