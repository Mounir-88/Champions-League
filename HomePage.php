<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Football Database Homepage</title>
    <link rel="stylesheet" href="HomePage.css">
	<style>
		/* Styles for the card container */
.card {
    max-width: 600px; /* Adjust the width as needed */
    margin: 0 auto;
    padding: 20px;
    box-sizing: border-box;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Styles for the winners card */
.winners-card {
    background-color: #f9f9f9;
    border-radius: 8px;
    padding: 20px;
    text-align: center;
}

.winners-card h2 {
    color: #333;
    font-size: 24px;
    margin-bottom: 10px;
}

.winners-card img {
    max-width: 100%;
    border-radius: 8px;
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
    

    <main>
    <section id="winners-picture">
        <div class="winners-card">
            <h2>WINNERS!!!</h2>
            <!-- Update the path to your winners picture -->
            <img src="\Champions League\Images\Extra\Mancity winners.jpg" alt="Winners Picture">
        </div>
    </section>
</main>


    <footer>
        <p>&copy; 2024 Football Database. All rights reserved.</p>
    </footer>

    <script src="dropdown.js"></script>
</body>
</html>
