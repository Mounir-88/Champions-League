--SELECT socialMedia_name, SUM(followers) AS TotalFollowers
--FROM SocialMedia
--GROUP BY socialMedia_name;


--SELECT referee_name, nationality, dob
--FROM Referee;


--SELECT *
--FROM Formation;


--SELECT player_name, Position, Shirt_Number
--FROM Player;


--SELECT name, founded
--FROM Team;


--SELECT stadium_name, capacity
--FROM Stadium;

--SELECT s.stadium_name, COUNT(*) AS TotalMatches
--FROM Matches m
--INNER JOIN Stadium s ON m.stadium_id = s.stadium_id
--GROUP BY s.stadium_name;

--SELECT s.sponsor_Name, t.name AS TeamName
--FROM SponsorShip s
--INNER JOIN Team t ON s.team_id = t.team_id;


--SELECT matches_id, spectators
--FROM Matches
--WHERE spectators > 50000;

--SELECT *
--FROM Matches
--WHERE homeTeam_score - awayTeam_score >= 3;

--SELECT * FROM Matches, Referee Where Matches.referee_id = Referee.referee_id AND Referee.nationality = 'German';


--SELECT *
--FROM Matches m
--INNER JOIN Team t ON m.homeTeam_id = t.team_id
--INNER JOIN Player p ON t.captain = p.player_id
--WHERE m.homeTeam_score > m.awayTeam_score
--AND (m.homeTeam_id = p.team_id AND p.Shirt_Number = m.winner_id);


--SELECT *
--FROM Matches
--WHERE homeTeam_score + awayTeam_score > 5;

--SELECT t.name AS TeamName, f.formation_name AS FormationName
--FROM Team t
--INNER JOIN Formation f ON t.formation_id = f.formation_id;


--SELECT m.*, r.referee_name, s.followers
--FROM Matches m
--INNER JOIN Referee r ON m.referee_id = r.referee_id
--INNER JOIN SocialMedia s ON r.socialMedia_ID = s.socialMedia_id
--WHERE s.followers > 100000;


--SELECT t.name AS TeamName, p.player_name AS CaptainName
--FROM Team t
--INNER JOIN Player p ON t.captain = p.player_id;


--SELECT m.*, s.stadium_name, s.capacity
--FROM Matches m
--INNER JOIN Stadium s ON m.stadium_id = s.stadium_id
--INNER JOIN Team t ON m.homeTeam_id = t.team_id
--WHERE s.capacity > 50000;

--SELECT t.name AS TeamName, sp.sponsor_Name AS SponsorName
--FROM Team t
--LEFT JOIN SponsorShip sp ON t.team_id = sp.team_id;

--SELECT m.*, c.coach_name, c.retired_player
--FROM Matches m
--INNER JOIN Team t ON m.awayTeam_id = t.team_id
--INNER JOIN Coach c ON t.team_id = c.team_id
--WHERE c.retired_player = 'retired';

--SELECT m.*, r.referee_name, r.nationality AS RefereeNationality, t1.name AS HomeTeam, t2.name AS AwayTeam
--FROM Matches m
--INNER JOIN Referee r ON m.referee_id = r.referee_id
--INNER JOIN Team t1 ON m.homeTeam_id = t1.team_id
--INNER JOIN Team t2 ON m.awayTeam_id = t2.team_id
--WHERE r.nationality NOT IN (t1.country, t2.country);

