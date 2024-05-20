<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Referees</title>
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

        /* Referee cards section */
        .referee-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .referee-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
            width: 250px;
            height: 300px; /* Adjusted height for taller cards */
            position: relative;
            transition: all 0.3s ease;
        }

        .referee-card:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            cursor: pointer;
        }

        .referee-card img {
            width: 100%;
            height: 70%; /* Adjusted height for the image */
            object-fit: cover;
        }

        .referee-card-name {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            padding: 10px;
            background-color: rgba(4, 29, 118, 0.8);
            text-align: center;
            font-weight: bold;
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
		
		/* Button */
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

    <div class="container">
	        <a class="show-total-followers-btn" href="referee_nationalities.php">Referee Nationalities</a>

        <h1>Referees</h1>
        <div class="referee-cards">
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

            // SQL query to retrieve referees and their photos
            $sql = "SELECT referee_id, referee_name, photos FROM Referee";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each referee
                while ($row = $result->fetch_assoc()) {
                    $refereeId = $row["referee_id"];
                    $refereeName = $row["referee_name"];
                    $refereePhotoPath = $row["photos"];
                    // Wrap each card with an anchor tag linking to the referee details page
                    echo '<a href="referee_details.php?id=' . $refereeId . '">';
                    echo '<div class="referee-card">';
                    echo '<img src="' . $refereePhotoPath . '" alt="' . $refereeName . '">';
                    echo '<div class="referee-card-name">' . $refereeName . '</div>';
                    echo '</div>';
                    echo '</a>';
                }
            } else {
                echo "0 referees found.";
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
