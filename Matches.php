<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matches</title>
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

        /* Match cards section */
        .match-card {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            overflow: hidden;
            padding: 20px;
            box-sizing: border-box;
            margin: 0 auto; /* Center the card */
            width: 80%; /* Adjust width as needed */
            margin-bottom: 20px; /* Add margin between cards */
        }

        .match-details {
            text-align: center;
        }

        .team-names {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .score {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .match-date {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .stage-info {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .winner-info {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .spectators-info {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .referee-info {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .stadium-info {
            font-size: 18px;
        }

        .team-logo {
            width: 200px; /* Adjust width of team logos */
            height: 200px; /* Adjust height of team logos */
            margin-bottom: 5px; /* Add margin between team logo and team name */
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

        .show-total-followers-btn {
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

        .show-total-followers-btn:hover {
            background-color: #3e1995;
        }
        
        .team-left {
            float: left; /* Float the home team logo to the left */
            margin-right: 10px; /* Add a small margin to separate the logo from the text */
        }

        .team-right {
            float: right; /* Float the away team logo to the right */
            margin-left: 10px; /* Add a small margin to separate the logo from the text */
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
    <a class="show-total-followers-btn" href="matches_stadium.php">Matches Per Stadium</a>
    <a class="show-total-followers-btn" href="matches_spectators.php">50.000 Spectators</a>
    <a class="show-total-followers-btn" href="3goals.php">Home 3 Goals</a>
    <a class="show-total-followers-btn" href="german_referee.php">German Referee</a>
    <a class="show-total-followers-btn" href="home_captain.php">Home/Captain</a>
    <a class="show-total-followers-btn" href="5total.php">5 Total Goals</a>
    <a class="show-total-followers-btn" href="referee_followers.php">100.000 Followers Referee</a>
    <a class="show-total-followers-btn" href="stadium_capacity.php">50.000 Home's Stadium</a>
    <a class="show-total-followers-btn" href="retired_coach.php">Retired Coach</a>
    <a class="show-total-followers-btn" href="different_nationality.php">Different Nationality</a>

    <h1>Matches</h1>
    <div class="match-cards">
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

        // SQL query to retrieve match details with team names instead of IDs, ordered by stage id
        $sql = "SELECT m.matches_id, m.date, 
               th.name AS homeTeamName, 
               ta.name AS awayTeamName, 
               m.homeTeam_score, 
               m.awayTeam_score, 
               tw.name AS winnerName, 
               m.spectators, 
               r.referee_name, 
               s.stadium_name,
               st.stage_name,
               th.photos AS homeTeamLogo,  -- Fetching the URL of the home team logo
               ta.photos AS awayTeamLogo   -- Fetching the URL of the away team logo
        FROM Matches m
        INNER JOIN Team th ON m.homeTeam_id = th.team_id
        INNER JOIN Team ta ON m.awayTeam_id = ta.team_id
        LEFT JOIN Team tw ON m.winner_id = tw.team_id
        LEFT JOIN Referee r ON m.referee_id = r.referee_id
        LEFT JOIN Stadium s ON m.stadium_id = s.stadium_id
        LEFT JOIN stage_matches st ON m.matches_id = st.matches_id
        ORDER BY st.stage_id"; // Joining the stages_matches table and ordering by stage id

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Output data of each match
            while ($row = $result->fetch_assoc()) {
                echo '<div class="match-card">';
                echo '<div class="team-with-logo team-left">';
                echo '<img src="' . $row["homeTeamLogo"] . '" alt="' . $row["homeTeamName"] . ' Logo" class="team-logo">';
                echo '</div>';
                echo '<div class="team-with-logo team-right">';
                echo '<img src="' . $row["awayTeamLogo"] . '" alt="' . $row["awayTeamName"] . ' Logo" class="team-logo">';
                echo '</div>';
                echo '<div class="match-details">';
                echo '<div class="team-names">' . $row["homeTeamName"] . ' ' . $row["homeTeam_score"] . ' - ' . $row["awayTeam_score"] . ' ' . $row["awayTeamName"] . '</div>';
                echo '<div class="match-date">' . $row["date"] . '</div>';
                echo '<div class="stage-info"> ' . $row["stage_name"] . '</div><br>'; // Displaying the stage information
                echo '<div class="winner-info">WINNER: ' . ($row["winnerName"] ?? "Draw") . '!</div>';
                echo '<div class="spectators-info">Spectators: ' . $row["spectators"] . '</div>';
                echo '<div class="referee-info">Referee: ' . ($row["referee_name"] ?? "Unknown") . '</div>';
                echo '<div class="stadium-info">Stadium: ' . ($row["stadium_name"] ?? "Unknown") . '</div>';
                echo '</div>';
                echo '</div>';
            }

        } else {
            echo "0 matches found.";
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
