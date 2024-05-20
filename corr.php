$servername = "localhost";
$username = "root"; // Your MySQL username
$password = ""; // Your MySQL password
$database = "championsleague"; // Your MySQL database name

$conn = new mysqli($servername, $username, $password, $database)or die('connection failed');