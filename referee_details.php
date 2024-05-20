<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Referee Details</title>
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

        /* Referee details section */
        .referee-details {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .referee-photo {
            width: 45%; /* Adjust width for the left half */
            margin-right: 5%; /* Add margin between the halves */
        }

        .referee-photo img {
            width: 100%; /* Make the image fill the container */
            height: auto; /* Maintain aspect ratio */
        }

        .referee-info {
            width: 45%; /* Adjust width for the right half */
            text-align: left;
        }

        .referee-info h1 {
            margin-top: 0;
        }

        .referee-info p {
            margin: 10px 0;
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
    <header>
        <!-- Navigation menu or back button -->
        <!-- Add your navigation elements here -->
    </header>
        <a href="Referee.php" class="back-button">Back</a>

    <div class="container">
        <!-- PHP code to fetch and display referee details -->
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

        // Check if a referee ID is provided in the URL
        if (isset($_GET['id'])) {
            $referee_id = $_GET['id'];

            // SQL query to fetch referee details
            $sql = "SELECT r.*, s.socialMedia_name
                    FROM Referee r
                    LEFT JOIN SocialMedia s ON r.socialMedia_ID = s.socialMedia_id
                    WHERE r.referee_id = $referee_id";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of the referee
                while ($row = $result->fetch_assoc()) {
                    // Display referee details
                    echo '<div class="referee-details">';
                    echo '<div class="referee-photo">';
                    echo '<img src="' . $row["photos"] . '" alt="' . $row["referee_name"] . '">';
                    echo '</div>';
                    echo '<div class="referee-info">';
                    echo '<h1>' . $row["referee_name"] . '</h1>';
                    echo '<p><strong>Referee ID:</strong> ' . $row["referee_id"] . '</p>';
                    echo '<p><strong>Nationality:</strong> ' . $row["nationality"] . '</p>';
                    echo '<p><strong>Date of Birth:</strong> ' . $row["dob"] . '</p>';
                    echo '<p><strong>Social Media:</strong> ' . $row["socialMedia_name"] . '</p>';
                    echo '</div>';
                    echo '</div>';
                }
            } else {
                echo "No referee found with the provided ID.";
            }
        } else {
            echo "No referee ID provided.";
        }

        // Close connection
        $conn->close();
        ?>
    </div>

</body>
</html>
