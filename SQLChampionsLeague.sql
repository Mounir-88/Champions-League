----CREATE DATABASE Football;

USE Football;

--CREATE TABLE Team (
--    team_id INT IDENTITY(1,1) PRIMARY KEY,
--    name VARCHAR(255) NOT NULL,
--	captain INT NOT NULL,
--	founded date NOT NULL,
--	socialMedia_ID int,
--    country VARCHAR(100) NOT NULL,
--    stadium_id INT NOT NULL,
--	FOREIGN KEY (socialMedia_ID) REFERENCES SocialMedia(socialMedia_ID),
--    FOREIGN KEY (stadium_id) REFERENCES Stadium(stadium_id),
--);

-- Disable foreign key constraint
--ALTER TABLE Team NOCHECK CONSTRAINT FK_Team_Player;

-- Perform data insertion into Team table

-- Enable foreign key constraint again
ALTER TABLE Team CHECK CONSTRAINT FK_Team_Player;


--ALTER TABLE Team
--ADD CONSTRAINT FK_Team_Player
--FOREIGN KEY (captain) REFERENCES Player(player_id);

--ALTER TABLE Team
--ADD formation_id INT;

--ALTER TABLE Team
--ADD CONSTRAINT FK_Teams_Formations FOREIGN KEY (formation_id) REFERENCES Formation(formation_id);

--CREATE TABLE KitColor (
--    kit_id INT IDENTITY(1,1) PRIMARY KEY,
--    team_id INT,
--    kitType VARCHAR(10) CHECK (kitType IN ('Home', 'Away')),
--    kitColor VARCHAR(50) NOT NULL,
--    FOREIGN KEY (team_id) REFERENCES Team(team_id),
--);

--CREATE TABLE SponsorShip (
--    sponsor_id INT IDENTITY(1,1) PRIMARY KEY,
--    team_id INT,
--    sponsor_Name VARCHAR(50) NOT NULL,
--    FOREIGN KEY (team_id) REFERENCES Team(team_id),
--);

--CREATE TABLE Stadium (
--    stadium_id INT IDENTITY(1,1) PRIMARY KEY,
--    stadium_name VARCHAR(255),
--    stadium_location VARCHAR(255),
--    capacity INT,
--    founded INT,
--    dimensions VARCHAR(255),
--);


--CREATE TABLE Coach (
--    coach_id INT IDENTITY(1,1) PRIMARY KEY,
--    coach_name VARCHAR(255) NOT NULL,
--	salary money NOT NULL,
--	retired_player binary CHECK (retired_player IN ('retired', 'not retired')),
--    dob DATE NOT NULL,
--    nationality VARCHAR(100) NOT NULL,
--	socialMedia_ID int,
--    FOREIGN KEY (socialMedia_ID) REFERENCES SocialMedia(socialMedia_ID),
--);

--ALTER TABLE Coach
--DROP CONSTRAINT CK__Coach__retired_p__46E78A0C;


--ALTER TABLE Coach
--ADD CONSTRAINT CK_retired_player CHECK (retired_player IN ('retired', 'not retired'));


--CREATE TABLE Formation (
--    formation_id INT IDENTITY(1,1) PRIMARY KEY,
--    formation_name VARCHAR(255),
--);


--CREATE TABLE Player (
--    player_id INT IDENTITY(1,1) PRIMARY KEY,
--    player_name VARCHAR(255) NOT NULL,
--    dob DATE NOT NULL,
--    Nationality VARCHAR(100) NOT NULL,
--    team_id INT,
--    Position VARCHAR(100),
--    Shirt_Number INT NOT NULL,
--    Photo IMAGE
--);

-- Altering Player table to add foreign key constraint
--ALTER TABLE Player
--ADD CONSTRAINT FK_Player_Team
--FOREIGN KEY (team_id) REFERENCES Team(team_id);

-- Disable foreign key constraints
--ALTER TABLE Player NOCHECK CONSTRAINT FK_Player_Team;

-- Perform data insertion into Player table

-- Enable foreign key constraints again
ALTER TABLE Player CHECK CONSTRAINT FK_Player_Team;


--CREATE TABLE SocialMedia(
--	socialMedia_id INT IDENTITY(1,1) PRIMARY KEY,
--	socialMedia_name VARCHAR(255) NOT NULL,
--	followers INT NOT NULL,
--	followings INT NOT NULL,
--);

--CREATE TABLE Matches (
--    matches_id INT IDENTITY(1,1) PRIMARY KEY,
--    date DATE,
--    duration TIME,
--    homeTeam_id INT,
--    awayTeam_id INT,
--    homeTeam_score INT,
--    awayTeam_score INT,
--    winner_id INT,
--    spectators INT,
--    referee_id INT,
--    FOREIGN KEY (referee_id) REFERENCES Referee(referee_id),
--    FOREIGN KEY (homeTeam_id) REFERENCES Team(team_id),
--    FOREIGN KEY (awayTeam_id) REFERENCES Team(team_id),
--    FOREIGN KEY (winner_id) REFERENCES Team(team_id)
--);

--ALTER TABLE Matches
--ADD stadium_id INT;

---- Add foreign key constraint for team_id referencing Team(team_id)
--ALTER TABLE Matches
--ADD CONSTRAINT FK_Matches_Stadium FOREIGN KEY (stadium_id) REFERENCES Stadium(stadium_id);

--	CREATE TABLE [Stage/Matches] (
--    stage_id INT IDENTITY(1,1) PRIMARY KEY,
--    stage_name VARCHAR(255),
--	matches_id INT,
--	FOREIGN KEY (matches_id) REFERENCES Matches(matches_id),
--);

--ALTER TABLE Matches
--DROP COLUMN duration;

--	CREATE TABLE Referee (
--    referee_id INT IDENTITY(1,1) PRIMARY KEY,
--    referee_name VARCHAR(255),
--    nationality VARCHAR(100),
--    dob DATE,
--	socialMedia_ID int,
--    FOREIGN KEY (socialMedia_ID) REFERENCES SocialMedia(socialMedia_ID),
--);


