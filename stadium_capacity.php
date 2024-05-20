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

        /* Matches section */
        .matches-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .matches-table th,
        .matches-table td {
            border: 1px solid #fff;
            padding: 10px;
            text-align: left;
        }

        .matches-table th {
            background-color: #041d76;
        }

        .matches-table td {
            background-color: rgba(255, 255, 255, 0.1);
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
        <a href="Matches.php" class="back-button">Back</a>

    <div class="container">
        <h1>Matches</h1>
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

        // SQL query to retrieve matches where the home team's stadium has a capacity of more than 50,000
        $sql = "SELECT m.*, s.stadium_name, s.capacity
                FROM Matches m
                INNER JOIN Stadium s ON m.stadium_id = s.stadium_id
                INNER JOIN Team t ON m.homeTeam_id = t.team_id
                WHERE s.capacity > 50000";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Output data of each row
            echo '<table class="matches-table">';
            echo '<tr><th>Match ID</th><th>Date</th><th>Home Team</th><th>Away Team</th><th>Home Team Score</th><th>Away Team Score</th><th>Winner</th><th>Spectators</th><th>Referee</th><th>Stadium</th><th>Stadium Capacity</th></tr>';
            while ($row = $result->fetch_assoc()) {
                echo '<tr>';
                echo '<td>' . $row["matches_id"] . '</td>';
                echo '<td>' . $row["date"] . '</td>';
                echo '<td>' . $row["homeTeam_id"] . '</td>';
                echo '<td>' . $row["awayTeam_id"] . '</td>';
                echo '<td>' . $row["homeTeam_score"] . '</td>';
                echo '<td>' . $row["awayTeam_score"] . '</td>';
                echo '<td>' . $row["winner_id"] . '</td>';
                echo '<td>' . $row["spectators"] . '</td>';
                echo '<td>' . $row["referee_id"] . '</td>';
                echo '<td>' . $row["stadium_name"] . '</td>';
                echo '<td>' . $row["capacity"] . '</td>';
                echo '</tr>';
            }
            echo '</table>';
        } else {
            echo "0 results";
        }

        // Close connection
        $conn->close();
        ?>
    </div>
</body>
</html>
