<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Referee Nationalities</title>
    <style>
        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #041d76;
            color: white;
        }

        /* Global styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #4b0082, #003399); /* Diagonal gradient background */
            color: white;
        }

        /* Navigation styles (copied from previous code) */
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

        /* Footer styles (copied from previous code) */
        footer {
            background-color: #041d76;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: auto; /* Align footer to the bottom of the page */
        }
		
		/* Back button */
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
        <a href="Referee.php" class="back-button">Back</a>

    <div class="container">
        <h1>Referee Nationalities</h1>

        <?php
        // Database connection parameters (replace with your own)
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

        // SQL query to retrieve referee nationalities
        $sql = "SELECT referee_name, nationality, dob FROM Referee";

        // Execute query
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Output data of each row in a table
            echo "<table>";
            echo "<tr><th>Referee Name</th><th>Nationality</th><th>Date of Birth</th></tr>";
            while ($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row["referee_name"] . "</td><td>" . $row["nationality"] . "</td><td>" . $row["dob"] . "</td></tr>";
            }
            echo "</table>";
        } else {
            echo "0 referees found.";
        }

        // Close connection
        $conn->close();
        ?>
    </div>
</body>
</html>
