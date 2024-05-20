<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Social Media Total Followers</title>
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
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
        }

        /* Total followers section */
        .total-followers {
            margin: 20px;
            text-align: center;
        }

        .total-followers-rectangle {
            width: 200px;
            height: 100px;
            background-color: #041d76;
            border-radius: 8px;
            padding: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }

        .total-followers-rectangle h3 {
            margin: 0;
            text-align: center;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            max-width: 160px;
        }

        .total-followers-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .total-followers-item {
            margin-bottom: 5px;
        }

        .total-followers-item strong {
            margin-right: 10px;
        }

        /* Back button */
        .back-button {
            background-color: #041d76;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove underline */
            display: inline-block;
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #3e1995;
        }
    </style>
</head>
<body>
    <header>
        <a href="SocialMedia.php" class="back-button">Back</a>
    </header>

    <div class="container">
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

        // SQL query to retrieve social media names and their total followers
        $sql = "SELECT socialMedia_name, SUM(followers) AS TotalFollowers
                FROM SocialMedia
                GROUP BY socialMedia_name";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Output data of each row
            while ($row = $result->fetch_assoc()) {
                $socialMediaName = $row["socialMedia_name"];
                $totalFollowers = $row["TotalFollowers"];

                // Display the social media name and total followers as a rectangle
                echo '<div class="total-followers">';
                echo '<div class="total-followers-rectangle">';
                echo '<h3>' . $socialMediaName . '</h3>';
                echo '<ul class="total-followers-list">';
                echo '<li class="total-followers-item"><strong>Total Followers:</strong>' . $totalFollowers . '</li>';
                echo '</ul>';
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
</body>
</html>
