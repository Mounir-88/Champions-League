<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Social Media</title>
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

        /* Social media section */
        .social-media-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .social-media-card {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            padding: 20px;
            box-sizing: border-box;
            width: 300px; /* Adjust card width */
        }

        .social-media-info {
            text-align: left;
        }

        .attribute {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .attribute strong {
            margin-right: 10px;
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
        <!-- Button line -->
        <a class="show-total-followers-btn" href="social_media_total_followers.php">Show Total Followers</a>

        <div class="social-media-cards">
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

            // SQL query to retrieve social media attributes
            $sql = "SELECT socialMedia_id, socialMedia_name, followers, followings FROM SocialMedia";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    $socialMediaId = $row["socialMedia_id"];
                    $socialMediaName = $row["socialMedia_name"];
                    $followers = $row["followers"];
                    $followings = $row["followings"];

                    // Display the social media card
                    echo '<div class="social-media-card">';
                    echo '<div class="social-media-info">';
                    echo '<div class="attribute"><strong>Social Media ID:</strong>' . $socialMediaId . '</div>';
                    echo '<div class="attribute"><strong>Social Media Name:</strong>' . $socialMediaName . '</div>';
                    echo '<div class="attribute"><strong>Followers:</strong>' . $followers . '</div>';
                    echo '<div class="attribute"><strong>Followings:</strong>' . $followings . '</div>';
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

    <footer>
        <p>© 2024 Champions League. All rights reserved.</p>
    </footer>
</body>
</html>
