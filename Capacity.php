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
            height: 150px; /* Adjusted height for smaller cards */
            position: relative;
            transition: all 0.3s ease;
        }

        .stadium-card:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            cursor: pointer;
        }

        .stadium-card-info {
            padding: 10px;
            text-align: center;
        }

        .stadium-name {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .stadium-capacity {
            font-size: 16px;
            color: #ccc;
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
        <a href="Stadium.php" class="back-button">Back</a>

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

            // SQL query to retrieve stadium names and capacities
            $sql = "SELECT stadium_name, capacity FROM Stadium";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each stadium
                while ($row = $result->fetch_assoc()) {
                    $stadiumName = $row["stadium_name"];
                    $capacity = $row["capacity"];
                    // Display the stadium card
                    echo '<div class="stadium-card">';
                    echo '<div class="stadium-card-info">';
                    echo '<div class="stadium-name">' . $stadiumName . '</div>';
                    echo '<div class="stadium-capacity">Capacity: ' . $capacity . '</div>';
                    echo '</div>';
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
</body>
</html>
