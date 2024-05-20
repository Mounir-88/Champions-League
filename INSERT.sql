------------INSERT INTO SocialMedia (socialMedia_name, followers, followings)
------------VALUES ('rbleipzig', '2100000', '86'), ('clubbrugge', '407000', '167');
------------INSERT INTO SocialMedia (socialMedia_name, followers, followings)
------------VALUES ('liverpoolfc', '45300000', '281000000'),
------------('acmilan', '16100000', '135000000'),
------------('eintrachtfrankfurt', '1100000', '100000000'),
------------('bvb09', '19900000', '97000000'),
------------('inter', '11400000', '118000000'),
------------('psg', '64800000', '123000000'),
------------('mancity', '52600000', '483000000'),
------------('slbenfica', '2800000', '78400000'),
------------('realmadrid', '155000000', '54000000'),
------------('spursofficial', '17000000', '274000000'),
------------('officialsscnapoli', '4700000', '123000000'),
------------('chelseafc', '41800000', '198000000'),
------------('fcporto', '2500000', '95000000'),
------------('fcbayern', '41800000', '64000000');

------------INSERT INTO SocialMedia (socialMedia_name, followers, followings)
------------VALUES ('mrcorose', '1299', '3'),
------------('pepteam', '7900000', '27'),
------------('rik_de_mil', '1978', '122'),
------------('smnmosvi', '4769', '8'),
------------('mrancelotti', '14300000', '15'),
------------('stefpiolii', '1142', '49'),
------------('i.dinp', '554', '204'),
------------('mrfrancescocalzonaofficial', '55200', '36'),
------------('edinterzic11', '175000', '345'),
------------('pochettino', '1100000', '84'),
------------('simoninzaghi_', '38200', '42'),
------------('sergioconceicaoofficial', '292000', '231'),
------------('luisenrique_2121', '729000', '86');

------------INSERT INTO SocialMedia (socialMedia_name, followers, followings)
------------VALUES ('serdargozubuyukfifa', '16300', '2379'),
------------('davidemassaa', '287', '10'),
------------('halilumutmeleroficial', '1952', '5150'),
------------('felix.zwayer', '356', '128'),
------------('sandroscharerr', '838', '0'),
------------('clement_turpin', '275', '13'),
------------('artursoaresdia', '2762', '421'),
------------('_anthonytaylor_', '1891', '4520'),
------------('dannymakkelie', '2080', '102'),
------------('_szymonmarciniak_', '111000', '104'),
------------('orsatodaniele', '451', '22'),
------------('francoisletexier', '34', '12');



------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('City of Manchester Stadium', 'Manchester', 55097, 2002, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Red Bull Arena', 'Leipzig', 42959, 2004, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Jan Breydel Stadium', 'Bruges', 29042, 1975, '100m x 67m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Estadio da Luz', 'Lisbon', 64400, 2003, '105m x 68m');

-------------- Add other stadiums here using the same INSERT INTO syntax

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Istanbul Kovacs', 'Istanbul', 76192, 2002, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Santiago Bernabeu', 'Madrid', 81044, 1947, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('San Siro', 'Milan', 80018, 1926, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Tottenham Hotspur Stadium', 'London', 62759, 2019, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Waldstadion', 'Frankfurt', 52301, 1925, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Diego Armando Maradona', 'Naples', 54000, 1959, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Westfalenstadion', 'Dortmund', 81365, 1974, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Stamford Bridge', 'London', 40834, 1877, '103m x 67m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Estadio do Dragao', 'Porto', 50835, 2003, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Parc des Princes', 'Paris', 48712, 1972, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Allianz Arena', 'Munich', 75000, 2005, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Estadio do Sport Lisboa e Benfica', 'Lisbon', 64647, 2003, '105m x 68m');

------------INSERT INTO Stadium (stadium_name, stadium_location, capacity, founded, dimensions)
------------VALUES ('Ataturk Olympic Stadium', 'Istanbul', 76092, 2002, '105m x 68m');


------------ Insert data into the Team table
------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Liverpool FC', 1, '1892-06-03', 'England', 1);

-------------- Insert data into the Player table, referencing the team_id from the Team table
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Mohamed Salah', '1992-06-15', 'Egyptian', 1, 'Forward', 11);

-------------- Inserting teams
------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Real Madrid', 4, '1902-03-06', 'Spain', 6);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Dortmund', 5, '1909-12-19', 'Germany', 11);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Chelsea', 6, '1905-03-10', 'England', 12);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('RB Leipzig', 7, '2009-05-19', 'Germany', 2);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Mancity', 8, '1880-04-16', 'England', 8);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('PSG', 9, '1970-08-12', 'France', 14);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Bayern', 10, '1900-02-27', 'Germany', 15);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('AC Milan', 11, '1899-12-16', 'Italy', 7);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Tottenham', 12, '1882-09-05', 'England', 13);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Frankfurt', 13, '1899-03-08', 'Germany', 10);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Napoli', 14, '1926-08-25', 'Italy', 9);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Clubbrugge', 15, '1891-11-13', 'Belgium', 3);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Benfica', 16, '1904-02-28', 'Portugal', 5);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Inter', 17, '1908-03-09', 'Italy', 1);

------------INSERT INTO Team (name, captain, founded, country, stadium_id)
------------VALUES ('Porto', 18, '1893-09-28', 'Portugal', 4);





------------ Inserting captains
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Virgil van Dijk', '1991-07-08', 'Dutch', 1, 'Defender', 4);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Nacho Fernandez', '1990-01-18', 'Spanish', 4, 'Defender', 6);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Emre Can', '1994-01-12', 'German', 5, 'Midfielder', 23);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Reece James', '1999-12-08', 'English', 6, 'Defender', 24);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Willi Orban', '1992-11-03', 'Hungarian', 7, 'Defender', 4);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Kyle Walker', '1990-05-28', 'English', 8, 'Defender', 2);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Marquinhos', '1994-05-14', 'Brazilian', 9, 'Defender', 5);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Manuel Neuer', '1986-03-27', 'German', 10, 'Goalkeeper', 1);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Davide Calabria', '1996-12-06', 'Italian', 11, 'Defender', 2);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Son Heung-min', '1992-07-08', 'South Korean', 12, 'Forward', 7);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Sebastian Rode', '1990-10-11', 'German', 13, 'Midfielder', 17);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Lorenzo Insigne', '1991-06-04', 'Italian', 14, 'Forward', 24);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Hans Vanaken', '1992-08-14', 'Belgian', 15, 'Midfielder', 10);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Nicolas Otamendi', '1988-02-12', 'Argentinian', 16, 'Defender', 30);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Lautaro Martinez', '1997-08-22', 'Argentinian', 17, 'Forward', 10);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Pepe', '1983-02-26', 'Portuguese', 18, 'Defender', 3);


-------------- Inserting players for Liverpool
-------------- Goalkeepers
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Adrian', '1987-01-01', 'Spanish', 1, 'Goalkeeper', 13);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Alisson', '1992-10-02', 'Brazilian', 1, 'Goalkeeper', 1);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Harvey Davies', '2001-05-15', 'English', 1, 'Goalkeeper', 33);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Caoimhin Kelleher', '1998-11-23', 'Irish', 1, 'Goalkeeper', 62);

-------------- Defenders
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Trent Alexander-Arnold', '1998-10-07', 'English', 1, 'Defender', 66);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Joe Gomez', '1997-05-23', 'English', 1, 'Defender', 12);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Ibrahima Konate', '1999-05-25', 'French', 1, 'Defender', 5);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Joel Matip', '1991-08-08', 'Cameroonian', 1, 'Defender', 32);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Nathaniel Phillips', '1997-03-21', 'English', 1, 'Defender', 47);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Conor Ramsey', '2003-01-30', 'Scottish', 1, 'Defender', 74);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Andrew Robertson', '1994-03-11', 'Scottish', 1, 'Defender', 26);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Kostas Tsimikas', '1996-05-12', 'Greek', 1, 'Defender', 21);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Rhys Williams', '2001-02-03', 'English', 1, 'Defender', 46);

-------------- Midfielders
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Arthur', '1996-03-15', 'Brazilian', 1, 'Midfielder', 8);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Stefan Bajcetic', '2004-07-11', 'Serbian', 1, 'Midfielder', 75);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Ben Clark', '2003-09-19', 'English', 1, 'Midfielder', 49);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Harvey Elliott', '2003-04-04', 'English', 1, 'Midfielder', 67);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Fabinho', '1993-10-23', 'Brazilian', 1, 'Midfielder', 3);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Melkamu Frauendorf', '2005-02-08', 'German', 1, 'Midfielder', 88);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Jordan Henderson', '1990-06-17', 'English', 1, 'Midfielder', 14);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Curtis Jones', '2001-01-30', 'English', 1, 'Midfielder', 17);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Naby Keita', '1995-02-10', 'Guinean', 1, 'Midfielder', 8);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('James Milner', '1986-01-04', 'English', 1, 'Midfielder', 7);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Alex Oxlade-Chamberlain', '1993-08-15', 'English', 1, 'Midfielder', 15);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Thiago', '1991-04-11', 'Spanish', 1, 'Midfielder', 6);

-------------- Forwards
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Luis Diaz', '1997-01-13', 'Colombian', 1, 'Forward', 23);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Diogo Jota', '1996-12-04', 'Portuguese', 1, 'Forward', 20);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Bobby Duncan', '2001-06-26', 'English', 1, 'Forward', 43);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Fidel Carita', '2004-11-18', 'Spanish', 1, 'Forward', 54);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Cody Gakpo', '1999-05-07', 'Dutch', 1, 'Forward', 23);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Diego Nunez', '2002-09-12', 'Uruguayan', 1, 'Forward', 44);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Roberto Firmino', '1991-10-02', 'Brazilian', 1, 'Forward', 9);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Mohamed Salah', '1992-06-15', 'Egyptian', 1, 'Forward', 11);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Liam Stewart', '2001-03-01', 'English', 1, 'Forward', 59);




-------------- Inserting goalkeepers for Real Madrid
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Thibaut Courtois', '1992-05-11', 'Belgian', 2, 'Goalkeeper', 1);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Diego Pineiro', '2000-01-01', 'Spanish', 2, 'Goalkeeper', 13);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Francisco Portillo', '1998-03-25', 'Spanish', 2, 'Goalkeeper', 33);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Luis Canizares', '1999-08-17', 'Spanish', 2, 'Goalkeeper', 62);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Luca Zidane', '1998-05-13', 'French', 2, 'Goalkeeper', 27);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Andriy Lunin', '1999-02-11', 'Ukrainian', 2, 'Goalkeeper', 25);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Miguel de Luis', '2002-09-05', 'Spanish', 2, 'Goalkeeper', 12);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('David Alaba', '1992-06-24', 'Austrian', 2, 'Defender', 4);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Alvaro Odriozola', '1995-12-14', 'Spanish', 2, 'Defender', 19);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Dani Carvajal', '1992-01-11', 'Spanish', 2, 'Defender', 2);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Eder Militao', '1998-01-18', 'Brazilian', 2, 'Defender', 3);

-------------- Inserting defenders for Real Madrid
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Jesus Vallejo', '1997-01-05', 'Spanish', 2, 'Defender', 3);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Lucas Vazquez', '1991-07-01', 'Spanish', 2, 'Defender', 17);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Marcelo', '1988-05-12', 'Brazilian', 2, 'Defender', 12);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Ferland Mendy', '1995-06-08', 'French', 2, 'Defender', 23);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Antonio Rudiger', '1993-03-03', 'German', 2, 'Defender', 6);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Victor Tobias', '1998-09-17', 'Spanish', 2, 'Defender', 29);

-------------- Inserting midfielders for Real Madrid
------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Eduardo Camavinga', '2003-11-10', 'French', 2, 'Midfielder', 25);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Dani Ceballos', '1996-08-07', 'Spanish', 2, 'Midfielder', 8);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Dotor', '2003-02-12', 'Spanish', 2, 'Midfielder', 66);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Toni Kroos', '1990-01-04', 'German', 2, 'Midfielder', 8);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Luka Modric', '1985-09-09', 'Croatian', 2, 'Midfielder', 10);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Nacho Paz', '2001-07-22', 'Spanish', 2, 'Midfielder', 57);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Sergio Arribas', '2002-03-19', 'Spanish', 2, 'Midfielder', 30);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Aurelien Tchouameni', '2000-01-27', 'French', 2, 'Midfielder', 22);

------------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------------VALUES ('Federico Valverde', '1998-07-22', 'Uruguayan', 2, 'Midfielder', 15);
---- Inserting forwards for Real Madrid
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Alvaro Rodriguez', '1995-04-15', 'Spanish', 4, 'Forward', 7);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Karim Benzema', '1987-12-19', 'French', 4, 'Forward', 9);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Eden Hazard', '1991-01-07', 'Belgian', 4, 'Forward', 7);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Marco Asensio', '1996-01-21', 'Spanish', 4, 'Forward', 11);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Mariano Diaz', '1993-08-01', 'Dominican', 4, 'Forward', 24);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Rodrygo Goes', '2001-01-09', 'Brazilian', 4, 'Forward', 25);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Vinicius Junior', '2000-07-12', 'Brazilian', 4, 'Forward', 20);



------------ Goalkeepers for Tottenham Hotspur
----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Bradley Austin', '1993-05-27', 'English', 9, 'Goalkeeper', 13);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Fraser Forster', '1988-03-17', 'English', 9, 'Goalkeeper', 32);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Hugo Lloris', '1986-12-26', 'French', 9, 'Goalkeeper', 1);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Alfie Whiteman', '1998-01-02', 'English', 9, 'Goalkeeper', 41);

------------ Defenders for Tottenham Hotspur
----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Ben Davies', '1993-04-24', 'Welsh', 9, 'Defender', 33);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Eric Dier', '1994-01-15', 'English', 9, 'Defender', 15);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Emerson Royal', '1999-04-14', 'Brazilian', 9, 'Defender', 12);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Clement Lenglet', '1995-06-17', 'French', 9, 'Defender', 5);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Pedro Porro', '1999-02-13', 'Spanish', 9, 'Defender', 2);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Cristian Romero', '1998-04-27', 'Argentinian', 9, 'Defender', 4);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Davinson Sanchez', '1996-06-12', 'Colombian', 9, 'Defender', 6);

------------ Midfielders for Tottenham Hotspur
----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Japhet Tanganga', '1999-03-31', 'English', 9, 'Defender', 25);


----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Rodrigo Bentancur', '1997-06-25', 'Uruguayan', 9, 'Midfielder', 30);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Yves Bissouma', '1996-08-30', 'Malian', 9, 'Midfielder', 8);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Pierre-Emile Hojbjerg', '1995-08-05', 'Danish', 9, 'Midfielder', 5);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Ivan Perisic', '1989-02-02', 'Croatian', 9, 'Midfielder', 4);

------------ Midfielders for Tottenham Hotspur
----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('George Abbott', '2000-05-12', 'English', 9, 'Midfielder', 16);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Matty Craig', '2001-09-18', 'English', 9, 'Midfielder', 28);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Harvey Elliott', '2003-04-04', 'English', 9, 'Midfielder', 67);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Rohan Mundle', '2000-12-30', 'English', 9, 'Midfielder', 42);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Paulo Sarr', '1999-11-16', 'Portuguese', 9, 'Midfielder', 21);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Ryan Sessegnon', '2000-05-18', 'English', 9, 'Midfielder', 19);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Oliver Skipp', '2000-09-16', 'English', 9, 'Midfielder', 17);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Yago Santiago', '2001-07-22', 'Spanish', 9, 'Midfielder', 14);

------------ Forwards for Tottenham Hotspur
----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Arnaut Danjuma', '1996-05-06', 'Dutch', 9, 'Forward', 12);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Harry Kane', '1993-07-28', 'English', 9, 'Forward', 10);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Dejan Kulusevski', '2000-04-25', 'Swedish', 9, 'Forward', 21);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Lucas Moura', '1992-08-13', 'Brazilian', 9, 'Forward', 27);

----------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----------VALUES ('Richarlison', '1997-05-10', 'Brazilian', 9, 'Forward', 9);



---------- Goalkeepers for AC Milan
--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Mike Maignan', '1995-07-03', 'French', 8, 'Goalkeeper', 16);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Antonio Mirante', '1983-07-08', 'Italian', 8, 'Goalkeeper', 90);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Luca Nava', '2003-03-17', 'Italian', 8, 'Goalkeeper', 55);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Ciprian Tatarusanu', '1985-02-09', 'Romanian', 8, 'Goalkeeper', 1);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Daniel Vasquez', '2002-09-29', 'Italian', 8, 'Goalkeeper', 22);

---------- Defenders for AC Milan
--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Fode Toure', '1997-06-28', 'Senegalese', 8, 'Defender', 5);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Alessandro Bozzolan', '2002-03-11', 'Italian', 8, 'Defender', 45);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Davide Calabria', '1996-12-06', 'Italian', 8, 'Defender', 2);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Alessandro Coubis', '2001-07-27', 'Italian', 8, 'Defender', 56);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Sergino Dest', '2000-11-03', 'American', 8, 'Defender', 20);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Alessandro Florenzi', '1991-03-11', 'Italian', 8, 'Defender', 24);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Matteo Gabbia', '1999-10-21', 'Italian', 8, 'Defender', 46);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Theo Hernandez', '1997-10-06', 'French', 8, 'Defender', 19);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Pierre Kalulu', '2000-06-05', 'French', 8, 'Defender', 20);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Simon Kjaer', '1989-03-26', 'Danish', 8, 'Defender', 24);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Mohamed Thiaw', '1999-02-20', 'Senegalese', 8, 'Defender', 27);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Fran Tomari', '2003-01-22', 'Italian', 8, 'Defender', 39);

---------- Midfielders for AC Milan
--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Yacine Adli', '2000-07-29', 'French', 8, 'Midfielder', 23);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Tiemoue Bakayoko', '1994-08-17', 'French', 8, 'Midfielder', 14);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Ismael Bennacer', '1997-12-01', 'Algerian', 8, 'Midfielder', 4);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Brahim Diaz', '1999-08-03', 'Spanish', 8, 'Midfielder', 21);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Charles De Ketelaere', '2001-03-22', 'Belgian', 8, 'Midfielder', 30);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Alessio Guarnone', '2000-04-15', 'Italian', 8, 'Midfielder', 25);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Rade Krunic', '1993-10-07', 'Bosnian', 8, 'Midfielder', 33);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Tommaso Pobega', '1999-07-15', 'Italian', 8, 'Midfielder', 75);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Sandro Tonali', '2000-05-08', 'Italian', 8, 'Midfielder', 8);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Attila Vrancx', '2001-09-29', 'Hungarian', 8, 'Midfielder', 36);

---------- Forwards for AC Milan
--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Olivier Giroud', '1986-09-30', 'French', 8, 'Forward', 9);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Zlatan Ibrahimovic', '1981-10-03', 'Swedish', 8, 'Forward', 11);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Divock Origi', '1995-04-18', 'Belgian', 8, 'Forward', 17);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Rafael Leao', '1999-06-10', 'Portuguese', 8, 'Forward', 17);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Ante Rebic', '1993-09-21', 'Croatian', 8, 'Forward', 12);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Alexis Saelemaekers', '1999-06-27', 'Belgian', 8, 'Forward', 56);


-------- Goalkeepers for Club Brugge
------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Joe Bursik', '1999-10-28', 'English', 13, 'Goalkeeper', 1);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Senne Lammens', '2002-01-17', 'Belgian', 13, 'Goalkeeper', 25);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Hubert Maton', '2000-08-05', 'Belgian', 13, 'Goalkeeper', 32);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Simon Mignolet', '1988-03-06', 'Belgian', 13, 'Goalkeeper', 88);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Nathan Shinton', '2001-12-10', 'English', 13, 'Goalkeeper', 57);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Kjell Vroman', '2002-06-30', 'Belgian', 13, 'Goalkeeper', 65);

-------- Defenders for Club Brugge
------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Dedryck Boyata', '1990-11-28', 'Belgian', 13, 'Defender', 27);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Noa Lang', '1999-06-17', 'Dutch', 13, 'Defender', 26);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Daan De Ruere', '2000-03-02', 'Belgian', 13, 'Defender', 18);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Jack Hendry', '1995-05-07', 'Scottish', 13, 'Defender', 4);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Brandon Mechele', '1993-01-28', 'Belgian', 13, 'Defender', 44);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Brian Meijer', '2000-11-11', 'Belgian', 13, 'Defender', 39);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Denys Odoi', '1988-05-27', 'Belgian', 13, 'Defender', 16);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Juan Ordonez', '2000-02-06', 'Uruguayan', 13, 'Defender', 3);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Keanu Sabbe', '2003-09-28', 'Belgian', 13, 'Defender', 33);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Julien Seys', '1999-08-14', 'Belgian', 13, 'Defender', 22);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Jelle Spileers', '2001-03-25', 'Belgian', 13, 'Defender', 19);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Abdoulie Sylla', '2000-06-19', 'Senegalese', 13, 'Defender', 5);

-------- Midfielders for Club Brugge
------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Lenny Audoor', '2003-05-10', 'Belgian', 13, 'Midfielder', 8);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Samuel Homma', '2000-11-23', 'Belgian', 13, 'Midfielder', 17);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Christian Nielsen', '2000-02-14', 'Danish', 13, 'Midfielder', 6);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Reggie Onyedika', '2002-09-21', 'Belgian', 13, 'Midfielder', 14);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Owen Otasowie', '2001-04-26', 'American', 13, 'Midfielder', 20);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Mats Rits', '1993-07-18', 'Belgian', 13, 'Midfielder', 26);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Carl Sandra', '2000-12-03', 'Belgian', 13, 'Midfielder', 7);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Hans Vanaken', '1992-08-24', 'Belgian', 13, 'Midfielder', 20);

-------- Forwards for Club Brugge
------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Tahvon Buchanan', '1999-08-14', 'Canadian', 13, 'Forward', 10);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Ferran Jutgla', '2001-06-02', 'Spanish', 13, 'Forward', 18);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Noa Lang', '1999-06-17', 'Dutch', 13, 'Forward', 22);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Aldo Nusa', '2000-04-07', 'Belgian', 13, 'Forward', 29);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('David Perez', '2002-02-18', 'Spanish', 13, 'Forward', 11);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Anders Olsen', '2001-09-08', 'Norwegian', 13, 'Forward', 14);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Kamal Sowah', '2000-10-13', 'Ghanaian', 13, 'Forward', 23);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Cisse Talbi', '2001-01-03', 'Belgian', 13, 'Forward', 19);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Rudolf Vermant', '2002-05-22', 'Belgian', 13, 'Forward', 17);

------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
------VALUES ('Roman Yaremchuk', '1995-11-27', 'Ukrainian', 13, 'Forward', 9);


-------- Goalkeepers for SL Benfica
--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Anderson Gomez', '1996-03-25', 'Paraguayan', 15, 'Goalkeeper', 1);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Leonardo Kokubo', '2001-07-19', 'Japanese', 15, 'Goalkeeper', 22);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Sandro Soares', '1998-10-11', 'Brazilian', 15, 'Goalkeeper', 31);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Odisseas Vlachodimos', '1994-04-26', 'Greek', 15, 'Goalkeeper', 99);

-------- Defenders for SL Benfica
--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Alex Grimaldo', '1995-09-20', 'Spanish', 15, 'Defender', 3);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('André Almeida', '1990-09-10', 'Portuguese', 15, 'Defender', 34);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Arthur Bahia', '2001-08-19', 'Brazilian', 15, 'Defender', 14);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Gilberto', '1993-03-27', 'Brazilian', 15, 'Defender', 15);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('João Tomé', '2000-05-07', 'Portuguese', 15, 'Defender', 6);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Lucas Veríssimo', '1995-07-02', 'Brazilian', 15, 'Defender', 4);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Morato', '2001-08-01', 'Brazilian', 15, 'Defender', 2);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Nicolás Otamendi', '1988-02-12', 'Argentinian', 15, 'Defender', 30);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Ruben Dias', '1997-05-14', 'Portuguese', 15, 'Defender', 5);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Ricardo Rodrigues', '1999-06-16', 'Portuguese', 15, 'Defender', 29);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Marcus Ristie', '2000-11-02', 'Brazilian', 15, 'Defender', 25);

-------- Midfielders for SL Benfica
--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('François Aursnes', '1994-12-11', 'Norwegian', 15, 'Midfielder', 8);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Chiquinho', '1994-08-10', 'Portuguese', 15, 'Midfielder', 19);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Florentino Luís', '1999-08-19', 'Portuguese', 15, 'Midfielder', 6);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('João Félix', '1999-11-10', 'Portuguese', 15, 'Midfielder', 10);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('João Mário', '1993-01-19', 'Portuguese', 15, 'Midfielder', 17);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Jovane Cabral', '1998-06-14', 'Cape Verdean', 15, 'Midfielder', 77);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Carlo Ndour', '1999-03-21', 'Senegalese', 15, 'Midfielder', 28);

-------- Forwards for SL Benfica
--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('David Neres', '1997-03-03', 'Brazilian', 15, 'Forward', 7);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Daniel Moreira', '1999-11-25', 'Portuguese', 15, 'Forward', 11);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Julian Draxler', '1993-09-20', 'German', 15, 'Forward', 23);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Gonçalo Guedes', '1996-11-29', 'Portuguese', 15, 'Forward', 9);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Gil Dias', '1996-05-14', 'Portuguese', 15, 'Forward', 20);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Patrick Musa', '2002-02-18', 'Nigerian', 15, 'Forward', 14);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Ronaldo Silva', '1998-10-17', 'Brazilian', 15, 'Forward', 16);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Andreas Schjelderup', '2001-04-13', 'Norwegian', 15, 'Forward', 29);

--------INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--------VALUES ('Carlos Tengstedt', '1999-09-14', 'Swedish', 15, 'Forward', 17);

------ Goalkeepers for RB Leipzig
----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Janis Blaswich', '1991-10-08', 'German', 7, 'Goalkeeper', 21);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Tim Schlieck', '1998-05-22', 'German', 7, 'Goalkeeper', 36);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Peter Gulácsi', '1990-05-06', 'Hungarian', 7, 'Goalkeeper', 1);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Jonas Nickisch', '2002-03-14', 'German', 7, 'Goalkeeper', 34);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Ørjan Nyland', '1990-09-10', 'Norwegian', 7, 'Goalkeeper', 13);

------ Defenders for RB Leipzig
----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Lukas Klostermann', '1996-06-03', 'German', 7, 'Defender', 16);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Marcel Halstenberg', '1991-09-27', 'German', 7, 'Defender', 23);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Benjamin Henrichs', '1997-02-23', 'German', 7, 'Defender', 39);

------ Defenders for RB Leipzig
----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Josko Gvardiol', '2002-01-23', 'Croatian', 7, 'Defender', 32);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Abdou Diallo', '1996-05-04', 'French', 7, 'Defender', 37);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Stipe Bačelić-Grgić', '1997-08-19', 'Croatian', 7, 'Defender', 25);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Mohamed Simakan', '2000-05-03', 'French', 7, 'Defender', 2);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('David Raum', '1998-04-22', 'German', 7, 'Defender', 22);

------ Midfielders for RB Leipzig
----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Konrad Laimer', '1997-05-27', 'Austrian', 7, 'Midfielder', 27);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Xaver Schlager', '1997-09-28', 'Austrian', 7, 'Midfielder', 24);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Emil Forsberg', '1991-10-23', 'Swedish', 7, 'Midfielder', 10);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Amadou Haidara', '1998-01-31', 'Malian', 7, 'Midfielder', 8);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Dani Olmo', '1998-05-07', 'Spanish', 7, 'Midfielder', 7);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Christopher Nkunku', '1997-11-14', 'French', 7, 'Forward', 18);

------ Forwards for RB Leipzig
----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Timo Werner', '1996-03-06', 'German', 7, 'Forward', 11);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Andre Silva', '1995-11-06', 'Portuguese', 7, 'Forward', 19);

----INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
----VALUES ('Yussuf Poulsen', '1994-06-15', 'Danish', 7, 'Forward', 9);

---- Goalkeepers for Manchester City
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ederson', '1993-08-17', 'Brazilian', 8, 'Goalkeeper', 31);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Scott Carson', '1985-09-03', 'English', 8, 'Goalkeeper', 33);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Santiago Ortega', '1992-11-06', 'German', 8, 'Goalkeeper', 18);

---- Defenders for Manchester City
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Manuel Akanji', '1995-07-19', 'Swiss', 8, 'Defender', 25);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Rúben Dias', '1997-05-14', 'Portuguese', 8, 'Defender', 3);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Nathan Ake', '1995-02-18', 'Dutch', 8, 'Defender', 6);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('John Stones', '1994-05-28', 'English', 8, 'Defender', 5);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Benjamin Mendy', '1994-07-17', 'French', 8, 'Defender', 22);

---- Defenders for Manchester City
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Sébastien Charles', '1999-04-15', 'French', 8, 'Defender', 62);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ryan Lewis', '1998-11-20', 'English', 8, 'Defender', 29);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Aymeric Laporte', '1994-05-27', 'French', 8, 'Defender', 14);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kyle Walker', '1990-05-28', 'English', 8, 'Defender', 2);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Sergio Gomez', '1997-07-20', 'Spanish', 8, 'Defender', 21);

---- Midfielders for Manchester City
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Rodri', '1996-06-22', 'Spanish', 8, 'Midfielder', 16);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Bernardo Silva', '1994-08-10', 'Portuguese', 8, 'Midfielder', 20);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kevin De Bruyne', '1991-06-28', 'Belgian', 8, 'Midfielder', 17);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ilkay Gundogan', '1990-10-24', 'German', 8, 'Midfielder', 8);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Jack Grealish', '1995-09-10', 'English', 8, 'Midfielder', 10);

---- Midfielders for Manchester City
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kalvin Phillips', '1995-12-02', 'English', 8, 'Midfielder', 4);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Andy Robertson', '1994-03-11', 'Scottish', 8, 'Midfielder', 93);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Niall O''Reilly', '1998-04-20', 'Irish', 8, 'Midfielder', 75);

---- Midfielders for Manchester City
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Cole Palmer', '2001-04-05', 'English', 8, 'Midfielder', 80);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Miguel Perrone', '2001-08-15', 'Argentinian', 8, 'Midfielder', 32);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Phil Foden', '2000-05-28', 'English', 8, 'Midfielder', 47);

---- Forwards for Manchester City
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Erling Haaland', '2000-07-21', 'Norwegian', 8, 'Forward', 9);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Riyad Mahrez', '1991-02-21', 'Algerian', 8, 'Forward', 26);

---- Forwards for Manchester City
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Jonathan Alvarez', '1998-09-12', 'Spanish', 8, 'Forward', 19);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Bobby Knight', '1999-06-18', 'English', 8, 'Forward', 96);


---- Goalkeepers for Bayern
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Johannes Schenk', '2003-01-13', 'German', 10, 'Goalkeeper', 35);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Yann Sommer', '1988-12-17', 'Swiss', 10, 'Goalkeeper', 27);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Sven', '1988-08-03', 'German', 10, 'Goalkeeper', 26);

---- Defenders for Bayern
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Daley Blind', '1990-03-09', 'Dutch', 10, 'Defender', 23);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Alphonso Davies', '2000-11-02', 'Canadian', 10, 'Defender', 19);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Mattijs de Ligt', '1999-08-12', 'Dutch', 10, 'Defender', 4);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Lucas Hernandez', '1996-02-14', 'French', 10, 'Defender', 21);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Justin Jantzek', '2004-02-10', 'German', 10, 'Defender', 36);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Joao Cancelo', '1994-05-27', 'Portuguese', 10, 'Defender', 22);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Gabriel Marusic', '2003-03-03', 'Croatian', 10, 'Defender', 37);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Noussair Mazraoui', '1997-11-14', 'Moroccan', 10, 'Defender', 40);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Liam Morrison', '2002-07-25', 'Scottish', 10, 'Defender', 41);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Benjamin Pavard', '1996-03-28', 'French', 10, 'Defender', 5);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Bouna Sarr', '1992-01-31', 'French', 10, 'Defender', 20);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Josip Stanisic', '2000-04-02', 'Croatian', 10, 'Defender', 44);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Dayot Upamecano', '1998-10-27', 'French', 10, 'Defender', 2);


---- Midfielders for Bayern
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Leon Goretzka', '1995-02-06', 'German', 10, 'Midfielder', 8);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ryan Gravenberch', '2002-05-16', 'Dutch', 10, 'Midfielder', 38);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Joshua Kimmich', '1995-02-08', 'German', 10, 'Midfielder', 6);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Jamal Musiala', '2003-02-26', 'German', 10, 'Midfielder', 42);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Aleksandar Pavlovic', '2004-05-03', 'German', 10, 'Midfielder', 45);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Paul Wanner', '2005-12-23', 'German', 10, 'Midfielder', 14);


---- Forwards for Bayern
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Eric Maxim Choupo-Moting', '1989-03-23', 'Cameroonian', 10, 'Forward', 13);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kingsley Coman', '1996-06-13', 'French', 10, 'Forward', 11);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Serge Gnabry', '1995-07-14', 'German', 10, 'Forward', 7);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Arijon Ibrahimovic', '2005-12-11', 'German', 10, 'Forward', 46);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Sadio Mane', '1992-04-10', 'Senegalese', 10, 'Forward', 17);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Thomas Muller', '1989-09-13', 'German', 10, 'Forward', 25);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Leroy Sane', '1996-01-11', 'German', 10, 'Forward', 10);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Mathys Tel', '1973-08-29', 'French', 10, 'Forward', 39);


---- Goalkeepers for Frankfurt
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Matteo Bignetti', '2004-05-06', 'Austrian', 13, 'Goalkeeper', 43);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Jens Grahl', '1988-09-22', 'German', 13, 'Goalkeeper', 31);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Jannik Horz', '2003-04-14', 'German', 13, 'Goalkeeper', 47);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Diant Ramaj', '2001-09-19', 'German', 13, 'Goalkeeper', 40);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Simon Simoni', '2004-07-14', 'Albanian', 13, 'Goalkeeper', 41);

---- Goalkeepers for Frankfurt
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kevin Trapp', '1990-07-08', 'German', 13, 'Goalkeeper', 1);


---- Defenders for Frankfurt
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Buta', '1997-02-10', 'Portuguese', 13, 'Defender', 24);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Timothy Chandler', '1990-03-29', 'American', 13, 'Defender', 22);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Dario Gebuhr', '2003-05-06', 'German', 13, 'Defender', 46);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Makoto Hasebe', '1984-01-18', 'Japanese', 13, 'Defender', 20);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Christopher Lenz', '1994-09-22', 'German', 13, 'Defender', 25);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Philip Max', '1993-09-30', 'German', 13, 'Defender', 32);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Evan Ndicka', '1999-08-20', 'French', 13, 'Defender', 2);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Jan Schroder', '2003-04-15', 'German', 13, 'Defender', 49);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Hrvoje Smolcic', '2000-08-17', 'Croatian', 13, 'Defender', 5);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Almamy Toure', '1996-04-28', 'French', 13, 'Defender', 18);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Tuta', '1999-07-20', 'Brazilian', 13, 'Defender', 32);

---- Midfielders for Frankfurt
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Paxten Aaronson', '2003-08-26', 'American', 13, 'Midfielder', 30);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Eric Dina-Ebimbe', '2000-11-21', 'French', 13, 'Midfielder', 26);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Mario Gotze', '1992-06-03', 'German', 13, 'Midfielder', 27);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kristijan Jakic', '1997-05-14', 'Croatian', 13, 'Midfielder', 6);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Daichi Kamada', '1996-08-05', 'Japanese', 13, 'Midfielder', 15);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Jesper Lindstrom', '2000-06-15', 'Danish', 13, 'Midfielder', 29);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Mehdi Loune', '2004-05-14', 'German', 13, 'Midfielder', 45);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Djibril Sow', '1997-02-06', 'Swiss', 13, 'Midfielder', 8);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Marcel Wenig', '2004-05-04', 'German', 13, 'Midfielder', 28);

---- Forwards for Frankfurt
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Lucas Alario', '1992-10-08', 'Argentinian', 13, 'Forward', 21);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Faride Alidou', '2001-07-18', 'German', 13, 'Forward', 11);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Rafael Borre', '1995-09-15', 'Colombian', 13, 'Forward', 19);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ansgar Knauff', '2002-03-15', 'German', 13, 'Forward', 36);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Randal Kolo Muani', '1998-12-05', 'French', 13, 'Forward', 9);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Nacho Ferri', '2004-10-05', 'Spanish', 13, 'Forward', 48);



---- Goalkeepers for Chelsea
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Lucas Bergtrom', '2002-09-05', 'Finnish', 6, 'Goalkeeper', 47);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Marcus Bettinelli', '1992-05-24', 'English', 6, 'Goalkeeper', 13);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kepa', '1994-10-03', 'Spanish', 6, 'Goalkeeper', 1);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Edouard Mendy', '1992-03-16', 'Senegalese', 6, 'Goalkeeper', 16);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Gabriel Stonina', '2004-05-15', 'American', 6, 'Goalkeeper', 36);

---- Defenders for Chelsea
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Azpilicueta', '1989-08-28', 'Spanish', 6, 'Defender', 28);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Benoit Badiashile', '2001-03-26', 'French', 6, 'Defender', 4);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Trevoh Chalobah', '1999-07-05', 'British', 6, 'Defender', 14);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ben Chilwell', '1996-12-21', 'British', 6, 'Defender', 21);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Cucurella', '1998-07-22', 'Spanish', 6, 'Defender', 32);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Wesley Fofana', '2000-12-17', 'French', 6, 'Defender', 33);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Alfie Gilchrist', '2003-11-28', 'British', 6, 'Defender', 58);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kalidou Koulibaly', '1991-06-20', 'Senegalese', 6, 'Defender', 26);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Thiago Silva', '1984-09-22', 'Brazilian', 6, 'Defender', 6);

---- Midfielders for Chelsea
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Carney Chukwuemeka', '2003-01-28', 'British', 6, 'Midfielder', 30);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Enzo Fernandez', '2001-01-17', 'Spanish', 6, 'Midfielder', 5);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Conor Gallagher', '2000-02-06', 'British', 6, 'Midfielder', 23);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Lewis Hall', '2004-09-08', 'British', 6, 'Midfielder', 67);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Omari Hutchinson', '2003-10-29', 'British', 6, 'Midfielder', 56);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('N''Golo Kante', '1991-03-29', 'French', 6, 'Midfielder', 7);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Mateo Kovacic', '1994-05-06', 'Croatian', 6, 'Midfielder', 8);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ruben Loftus-Cheek', '1996-01-23', 'British', 6, 'Midfielder', 12);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Mason Mount', '1999-01-10', 'British', 6, 'Midfielder', 19);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Mykhaylo Mudryk', '2001-11-04', 'Ukrainian', 6, 'Midfielder', 15);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Denis Zakaria', '1996-11-20', 'Swiss', 6, 'Midfielder', 20);

---- Forwards for Chelsea
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Pierre-Emerick Aubameyang', '1989-06-18', 'Gabonese', 6, 'Forward', 9);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Armando Broja', '2001-09-10', 'Albanian', 6, 'Forward', 18);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('David Fofana', '2002-12-22', 'French', 6, 'Forward', 27);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Kai Havertz', '1999-06-11', 'German', 6, 'Forward', 29);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Joao Felix', '1999-11-10', 'Portuguese', 6, 'Forward', 11);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Noni Madueke', '2002-03-10', 'British', 6, 'Forward', 31);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Christian Pulisic', '1998-09-18', 'American', 6, 'Forward', 10);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Raheem Sterling', '1994-12-08', 'British', 6, 'Forward', 17);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Hakim Ziyech', '1993-03-19', 'Moroccan', 6, 'Forward', 22);


---- Goalkeepers for Porto
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Claudio Ramos', '1991-11-16', 'Portuguese', 19, 'Goalkeeper', 14);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Diogo Costa', '1999-09-19', 'Portuguese', 19, 'Goalkeeper', 99);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Samuel', '1994-03-29', 'Brazilian', 19, 'Goalkeeper', 94);

---- Defenders for Porto
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('David Carmo', '1999-07-19', 'Portuguese', 19, 'Defender', 4);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Fabio Cardoso', '1994-04-19', 'Portuguese', 19, 'Defender', 2);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Joao Marcelo', '2000-01-03', 'Brazilian', 19, 'Defender', 43);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Joao Mario', '2000-01-03', 'Portuguese', 19, 'Defender', 23);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Joao Mendes', '2000-04-13', 'Portuguese', 19, 'Defender', 55);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Marcano', '1987-06-23', 'Spanish', 19, 'Defender', 5);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Pepe', '1983-02-26', 'Portuguese', 19, 'Defender', 3);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Rodrigo Concercao', '2000-01-02', 'Portuguese', 19, 'Defender', 17);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Romain Correia', '1999-09-06', 'Portuguese', 19, 'Defender', 44);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Zaidu Sanusi', '1997-06-13', 'Nigerian', 19, 'Defender', 12);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Wendell', '1993-07-20', 'Brazilian', 19, 'Defender', 22);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Wilson Manafa', '1994-07-23', 'Portuguese', 19, 'Defender', 18);

--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ze Pedro', '1997-06-06', 'Portuguese', 19, 'Defender', 97);


---- Midfielders for Porto with correct information
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Andre Franco', '1998-04-12', 'Portuguese', 19, 'Midfielder', 20),
--       ('Bernardo Folha', '2002-03-23', 'Portuguese', 19, 'Midfielder', 87),
--       ('Bruno Costa', '1997-24-19', 'Portuguese', 19, 'Midfielder', 28),
--       ('Stephan Eustaquio', '1996-12-21', 'Canadian', 19, 'Midfielder', 46),
--       ('Marko Grujic', '1996-04-13', 'Serbian', 19, 'Midfielder', 16),
--       ('Otavio', '1995-02-09', 'Portuguese', 19, 'Midfielder', 25),
--       ('Mateus Uribe', '1991-03-21', 'Colombian', 19, 'Midfielder', 8),
--       ('Vasco Sousa', '2003-04-03', 'Portuguese', 19, 'Midfielder', 67);


---- Forwards for Porto with correct information
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Evanilson', '1999-10-06', 'Brazilian', 18, 'Forward', 30),
--       ('Fernando Andrade', '1993-01-06', 'Brazilian', 18, 'Forward', 38),
--       ('Gabriel Veron', '2002-09-18', 'Brazilian', 18, 'Forward', 7),
--       ('Galeno', '1997-03-08', 'Brazilian', 18, 'Forward', 13),
--       ('Goncalo Borges', '2001-03-29', 'Portuguese', 18, 'Forward', 70),
--       ('Abraham Marcus', '2000-01-02', 'Nigerian', 18, 'Forward', 98),
--       ('Danny Namaso', '2000-08-28', 'Angolan', 18, 'Forward', 19),
--       ('Pepe', '1997-02-24', 'Portuguese', 18, 'Forward', 11),
--       ('Mehdi Taremi', '1992-07-18', 'Iranian', 18, 'Forward', 9),
--       ('Toni Martinez', '1997-06-30', 'Spanish', 18, 'Forward', 29),
--       ('Wendel', '2000-08-02', 'Brazilian', 18, 'Forward', 50);


---- Goalkeepers for PSG with corrected information
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Gianluigi Donnarumma', '1999-02-25', 'Italian', 9, 'Goalkeeper', 99),
--       ('Lucas Lavallee', '2003-02-18', 'French', 9, 'Goalkeeper', 70),
--       ('Alexandre Letellier', '1990-12-11', 'French', 9, 'Goalkeeper', 90),
--       ('Sergio Rico', '1993-09-01', 'Spanish', 9, 'Goalkeeper', 16);


---- Defenders for PSG with corrected information
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('El Chadaille Bitshaibu', '1999-07-01', 'DR Congolese', 9, 'Defender', 31),
--       ('Achraf Hakimi', '1998-11-04', 'Moroccan', 9, 'Defender', 2),
--       ('Juan Bernat', '1993-03-01', 'Spanish', 9, 'Defender', 14),
--       ('Presnel Kimpembe', '1995-08-13', 'French', 9, 'Defender', 3),
--       ('Hugo Lamy', '2004-01-16', 'French', 9, 'Defender', 39),
--       ('Nordi Mukiele', '1997-11-01', 'French', 9, 'Defender', 26),
--       ('Nuno Mendes', '2002-06-19', 'Portuguese', 9, 'Defender', 25),
--       ('Timothee Pembele', '2002-09-09', 'French', 9, 'Defender', 29),
--       ('Sergio Ramos', '1986-03-30', 'Spanish', 9, 'Defender', 4),
--       ('Serif Nhaga', '2005-09-01', 'Portuguese', 9, 'Defender', 34);

---- Midfielders for PSG with corrected information
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
----('Carlos Soler', '1997-01-02', 'Spanish', 9, 'Midfielder', 8),
----       ('Danilo', '2000-09-09', 'Portuguese', 9, 'Midfielder', 21),
----       ('Fabian Ruiz', '1996-04-03', 'Spanish', 9, 'Midfielder', 7),
--       ('Ismail Gharbi', '2004-04-10', 'Spanish', 9, 'Midfielder', 35),
--       --('Renato Sanches', '1997-08-18', 'Portuguese', 9, 'Midfielder', 18),
--       --('Marco Verratti', '1992-11-05', 'Italian', 9, 'Midfielder', 6),
--       ('Vitinha', '2000-02-13', 'Portuguese', 9, 'Midfielder', 17),
--       ('Warren Zaire-Emery', '2006-03-08', 'French', 9, 'Midfielder', 33);

---- Forwards for PSG with corrected information and filled-out NULL values
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Hugo Ektike', '1999-05-27', 'French', 9, 'Forward', 44),
--       ('Ilyes Housni', '2005-05-14', 'French', 9, 'Forward', 37),
--       ('Kylian Mbappe', '1998-12-20', 'French', 9, 'Forward', 7),
--       ('Lionel Messi', '1987-06-24', 'Argentine', 9, 'Forward', 30),
--       ('Neymar', '1992-02-05', 'Brazilian', 9, 'Forward', 10);


---- Goalkeepers for Inter with corrected information and filled-out NULL values
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Niolaos Botis', '2004-03-31', 'Greek', 17, 'Goalkeeper', 40),
--       ('Alex Cordaz', '1983-03-20', 'Italian', 17, 'Goalkeeper', 21),
--       ('Samir Handanovic', '1984-07-14', 'Slovenian', 17, 'Goalkeeper', 1),
--       ('Andre Onana', '1996-04-02', 'Cameroonian', 17, 'Goalkeeper', 24);

---- Defenders for Inter with corrected information and filled-out NULL values
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Francesco Acerbi', '1988-02-10', 'Italian', 17, 'Defender', 15),
--       ('Alessandro Bastoni', '1999-04-13', 'Italian', 17, 'Defender', 95),
--       ('Raoul Bellanova', '2000-05-17', 'Italian', 17, 'Defender', 12),
--       ('Danilo D''Ambrosio', '1988-09-09', 'Italian', 17, 'Defender', 33),
--       ('Dalbert', '1993-09-08', 'Brazilian', 17, 'Defender', 29),
--       ('Matteo Darmian', '1989-12-02', 'Italian', 17, 'Defender', 36),
--       ('Stefan de Vrij', '1992-02-05', 'Dutch', 17, 'Defender', 6),
--       ('Federico Dimarco', '1997-11-10', 'Italian', 17, 'Defender', 32),
--       ('Alessandro Fontanarosa', '2001-04-10', 'Italian', 17, 'Defender', 47),
--       ('Milan Skriniar', '1995-02-11', 'Slovakian', 17, 'Defender', 37),
--       ('Mattia Zanotti', '1999-05-08', 'Italian', 17, 'Defender', 46);

---- Midfielders for Inter with corrected information and filled-out NULL values
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Ebenezer Akinsanmiro', '1998-03-15', 'Nigerian', 17, 'Midfielder', 43),
--       ('Kristjan Asllani', '1999-06-20', 'Albanian', 17, 'Midfielder', 14),
--       ('Nicolo Barella', '1997-02-07', 'Italian', 17, 'Midfielder', 23),
--       ('Marcelo Brozovic', '1992-11-16', 'Croatian', 17, 'Midfielder', 77),
--       ('Hakan Calhanoglu', '1994-02-08', 'Turkish', 17, 'Midfielder', 20),
--       ('Valentin Carboni', '2001-05-19', 'Italian', 17, 'Midfielder', 45),
--       ('Denzel Dumfries', '1996-04-18', 'Dutch', 17, 'Midfielder', 2),
--       ('Roberto Gagliardini', '1994-04-07', 'Italian', 17, 'Midfielder', 5),
--       ('Jacopo Gianelli', '1999-08-09', 'Italian', 17, 'Midfielder', 32),
--       ('Henrikh Mkhitaryan', '1989-01-21', 'Armenian', 17, 'Midfielder', 22);

---- Forwards for Inter with corrected information and filled-out NULL values
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES ('Joaquin Correa', '1994-08-13', 'Argentinian', 17, 'Forward', 11),
--       ('Dennis Curatolo', '1999-01-04', 'Italian', 17, 'Forward', 42),
--       ('Edin Dzeko', '1986-03-17', 'Bosnian', 17, 'Forward', 9),
--       ('Issiaka Kamate', '2002-05-15', 'Ivorian', 17, 'Forward', 49),
--       ('Romelu Lukaku', '1993-05-13', 'Belgian', 17, 'Forward', 90);



---- Goalkeepers for Napoli with corrected information and filled-out NULL values
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
--    ('Valerio Boffeli', '1995-03-12', 'Italian', 26, 'Goalkeeper', 52),
--    ('Pierluigi Gollini', '1995-03-18', 'Italian', 26, 'Goalkeeper', 95),
--    ('Hubert Idasiak', '1998-07-23', 'Polish', 26, 'Goalkeeper', 16),
--    ('Davide Marfella', '1996-11-28', 'Italian', 26, 'Goalkeeper', 12),
--    ('Alex Meret', '1997-03-22', 'Italian', 26, 'Goalkeeper', 1);


---- Insert statement to fill out NULL values for Napoli's defenders
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
--    ('Bartosz Bereszynski', '1992-07-12', 'Polish', 26, 'Defender', 19),
--    ('Giovanni Di Lorenzo', '1993-11-05', 'Italian', 26, 'Defender', 22),
--    ('Juan Jesus', '1991-06-10', 'Brazilian', 26, 'Defender', 5),
--    ('Min-jae Kim', '1997-11-15', 'South Korean', 26, 'Defender', 3),
--    ('Mario Rui', '1991-05-27', 'Portuguese', 26, 'Defender', 6),
--    ('Mathias Olivera', '1997-03-15', 'Uruguayan', 26, 'Defender', 17),
--    ('Leo Ostigard', '1998-09-22', 'Norwegian', 26, 'Defender', 55),
--    ('Amir Rrahmani', '1994-02-24', 'Kosovar', 26, 'Defender', 13);

---- Insert statement to fill out NULL values for Napoli's midfielders
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
--    ('Frank Anguissa', '1995-11-23', 'Cameroonian', 26, 'Midfielder', 99),
--    ('Diego Demme', '1991-11-21', 'German', 26, 'Midfielder', 4),
--    ('Eljif Elmas', '1999-09-02', 'Macedonian', 26, 'Midfielder', 7),
--    ('Gianluca Gaetano', '2000-05-16', 'Italian', 26, 'Midfielder', 70),
--    ('Stanislav Lobotka', '1994-11-25', 'Slovakian', 26, 'Midfielder', 68),
--    ('Tanguy Ndombele', '1996-12-28', 'French', 26, 'Midfielder', 91),
--    ('Karim Zedadka', '1996-01-01', 'Algerian', 26, 'Midfielder', 31),
--    ('Piotr Zielinski', '1994-05-20', 'Polish', 26, 'Midfielder', 20);

---- Insert statement to fill out NULL values for Napoli's forwards
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
--    ('Khvicha Kvaratskhelia', '2001-02-12', 'Georgian', 26, 'Forward', 77),
--    ('Hirving Lozano', '1995-07-30', 'Mexican', 26, 'Forward', 11),
--    ('Victor Osimhen', '1998-12-29', 'Nigerian', 26, 'Forward', 9),
--    ('Matteo Politano', '1993-08-03', 'Italian', 26, 'Forward', 21),
--    ('Giacomo Raspadori', '1999-02-18', 'Italian', 26, 'Forward', 81),
--    ('Giovanni Simeone', '1995-07-05', 'Argentinian', 26, 'Forward', 18),
--    ('Alessio Zerbin', '2001-08-18', 'Italian', 26, 'Forward', 23);


---- Insert statement to fill out NULL values for Dortmund's goalkeepers
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
--    ('Gregor', '1995-07-01', 'Swiss', 5, 'Goalkeeper', 1),
--    ('Marcel Lotka', '1998-04-15', 'Polish', 5, 'Goalkeeper', 35),
--    ('Alexander Meyer', '1997-12-20', 'German', 5, 'Goalkeeper', 33),
--    ('Silas Ostrzinski', '1996-09-03', 'German', 5, 'Goalkeeper', 31),
--    ('Luca Unbehaun', '1999-11-29', 'German', 5, 'Goalkeeper', 38);

---- Insert statement to fill out NULL values for Dortmund's defenders
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
--    ('Soumaila Coulibaly', '1998-02-21', 'Malian', 5, 'Defender', 44),
--    ('Raphael Guerreiro', '1993-12-22', 'Portuguese', 5, 'Defender', 13),
--    ('Mats Hummels', '1988-12-16', 'German', 5, 'Defender', 15),
--    ('Mateu Morey', '2000-03-02', 'Spanish', 5, 'Defender', 2),
--    ('Thomas Meunier', '1991-09-12', 'Belgian', 5, 'Defender', 24),
--    ('Felix Passlack', '1998-05-29', 'German', 5, 'Defender', 30),
--    ('Tom Rothe', '1999-08-14', 'German', 5, 'Defender', 36),
--    ('Julian Ryerson', '1997-06-19', 'Norwegian', 5, 'Defender', 26),
--    ('Nico Shlotterbeck', '2000-12-01', 'German', 5, 'Defender', 4),
--    ('Nico Schulz', '1993-04-01', 'German', 5, 'Defender', 14),
--    ('Niklas Sule', '1995-09-03', 'German', 5, 'Defender', 25),
--    ('Marius Wolf', '1995-05-27', 'German', 5, 'Defender', 17);


---- Insert statement to fill out NULL values for Dortmund's midfielders
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
--    ('Jude Bellingham', '2003-06-29', 'English', 5, 'Midfielder', 22),
--    ('Julian Brandt', '1996-05-02', 'German', 5, 'Midfielder', 19),
--    ('Mahmoud Dahoud', '1996-01-01', 'Syrian', 5, 'Midfielder', 8),
--    ('Goktan Gurpuz', '1998-04-20', 'Turkish', 5, 'Midfielder', 42),
--    ('Abdoulaye Kamara', '1999-11-05', 'French', 5, 'Midfielder', 32),
--    ('Salih Ozcan', '1998-01-11', 'Turkish', 5, 'Midfielder', 6),
--    ('Antonios Papadopoulos', '2000-09-09', 'German', 5, 'Midfielder', 47),
--    ('Marco Pasalic', '2001-07-16', 'Croatian', 5, 'Midfielder', 46),
--    ('Marco Reus', '1989-05-31', 'German', 5, 'Midfielder', 11),
--    ('Gio Reyna', '2002-11-13', 'American', 5, 'Midfielder', 7);

---- Insert statement to fill out NULL values for Dortmund's forwards
--INSERT INTO Player (player_name, dob, Nationality, team_id, Position, Shirt_Number)
--VALUES 
--    ('Karim Adeyemi', '2002-01-18', 'German', 5, 'Forward', 27),
--    ('Jamie Bynoe-Gittens', '2003-10-24', 'English', 5, 'Forward', 43),
--    ('Julien Duranville', '2002-08-18', 'Belgian', 5, 'Forward', 16),
--    ('Sebastien Haller', '1994-06-22', 'French', 5, 'Forward', 9),
--    ('Donyell Malen', '1999-01-19', 'Dutch', 5, 'Forward', 21),
--    ('Anthony Modeste', '1988-04-14', 'French', 5, 'Forward', 20),
--    ('Youssoufa Moukoko', '2004-11-20', 'German', 5, 'Forward', 18),
--    ('Justin Njimah', '2001-07-30', 'German', 5, 'Forward', 49);

--INSERT INTO Coach (coach_name, salary, retired_player, dob, nationality, socialMedia_ID)
--VALUES 
--    ('Edin Terzic', 1000000, 'retired', '1982-03-17', 'Bosnian', NULL),
--    ('Luciano Spalletti', 1500000, 'not retired', '1959-03-07', 'Italian', NULL),
--    ('Simone Inzaghi', 1200000, 'retired', '1976-04-05', 'Italian', NULL),
--    ('Cristophe Galtier', 1100000, 'not retired', '1966-08-28', 'French', NULL),
--    ('Sergio Conceicao', 1300000, 'retired', '1974-11-15', 'Portuguese', NULL),
--    ('Frank Lampard', 900000, 'retired', '1978-06-20', 'English', NULL),
--    ('Oliver Glasner', 950000, 'not retired', '1974-08-04', 'Austrian', NULL),
--    ('Thomas Tuchel', 1400000, 'not retired', '1973-08-29', 'German', NULL),
--    ('Pep Guardiola', 2000000, 'retired', '1971-01-18', 'Spanish', NULL),
--    ('Marco Rose', 1050000, 'not retired', '1976-09-11', 'German', NULL),
--    ('Rik De Mil', 850000, 'not retired', '1985-07-03', 'Belgian', NULL),
--    ('Roger Schmidt', 1150000, 'retired', '1967-03-13', 'German', NULL),
--    ('Stefano Pioli', 1100000, 'not retired', '1965-10-20', 'Italian', NULL),
--    ('Ryan Mason', 850000, 'retired', '1991-06-13', 'English', NULL),
--    ('Carlo Ancelotti', 1800000, 'retired', '1959-06-10', 'Italian', NULL),
--    ('Jurgen Klopp', 1700000, 'retired', '1967-06-16', 'German', NULL);


--INSERT INTO Formation (formation_name)
--VALUES 
--    ('4-3-3'),
--    ('4-2-3-1'),
--    ('3-5-2'),
--    ('3-2-4-1'),
--    ('3-4-2-1'),
--    ('4-1-4-1'),
--    ('3-4-3');

--UPDATE Team
--SET formation_id = 
--    CASE 
--        WHEN team_id IN (3, 4, 14) THEN 1 -- 4-3-3
--        WHEN team_id IN (16, 10, 13, 18) THEN 2 -- 4-2-3-1
--        WHEN team_id IN (15, 9, 17) THEN 3 -- 3-5-2
--        WHEN team_id = 8 THEN 4 -- 3-2-4-1
--        WHEN team_id IN (11, 12) THEN 5 -- 3-4-2-1
--        WHEN team_id = 5 THEN 6 -- 4-1-4-1
--        WHEN team_id = 6 THEN 7 -- 3-4-3
--    END;



---- Update Coach table with team_id and formation_id values
--UPDATE Coach
--SET team_id = CASE coach_id
--                WHEN 5 THEN 5
--                WHEN 6 THEN 14
--                WHEN 7 THEN 17
--                WHEN 8 THEN 9
--                WHEN 9 THEN 18
--                WHEN 10 THEN 6
--                WHEN 11 THEN 13
--                WHEN 12 THEN 10
--                WHEN 13 THEN 8
--                WHEN 14 THEN 7
--                WHEN 15 THEN 15
--                WHEN 16 THEN 16
--                WHEN 17 THEN 11
--                WHEN 18 THEN 12
--                WHEN 19 THEN 4
--                WHEN 20 THEN 3
--                ELSE NULL
--             END,
--    formation_id = CASE coach_id
--                      WHEN 5 THEN 6
--                      WHEN 6 THEN 1
--                      WHEN 7 THEN 3
--                      WHEN 8 THEN 3
--                      WHEN 9 THEN 2
--                      WHEN 10 THEN 7
--                      WHEN 11 THEN 2
--                      WHEN 12 THEN 2
--                      WHEN 13 THEN 4
--                      WHEN 14 THEN 2
--                      WHEN 15 THEN 3
--                      WHEN 16 THEN 2
--                      WHEN 17 THEN 5
--                      WHEN 18 THEN 5
--                      WHEN 19 THEN 1
--                      WHEN 20 THEN 1
--                      ELSE NULL
--                   END;

---- Liverpool
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (3, 'home', 'red'),
--       (3, 'away', 'white');

---- Real Madrid
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (4, 'home', 'white'),
--       (4, 'away', 'lavender');

---- Borussia Dortmund
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (5, 'home', 'yellow (black stripes vertically)'),
--       (5, 'away', 'black');

---- Chelsea
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (6, 'home', 'blue'),
--       (6, 'away', 'white (blue stripes on it horizontally)');

---- RB Leipzig
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (7, 'home', 'white'),
--       (7, 'away', 'red');

---- Man City
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (8, 'home', 'Sky blue'),
--       (8, 'away', 'Black and red');

---- PSG
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (9, 'home', 'dynamic blue (white and red stripes)'),
--       (9, 'away', 'white');

---- Bayern Munich
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (10, 'home', 'red'),
--       (10, 'away', 'white');

---- AC Milan
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (11, 'home', 'black (with red stripes vertically)'),
--       (11, 'away', 'white');

---- Tottenham
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (12, 'home', 'white'),
--       (12, 'away', 'dark blue');

---- Eintracht Frankfurt
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (13, 'home', 'green (white strips horizontally)'),
--       (13, 'away', 'black (small yellow parts)');

---- Napoli
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (14, 'home', 'blue'),
--       (14, 'away', 'white');

---- Club Brugge
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (15, 'home', 'blue (with black stripes vertically)'),
--       (15, 'away', 'white');

---- Benfica
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (16, 'home', 'red'),
--       (16, 'away', 'yellow');

---- Inter
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (17, 'home', 'striped vertically black and blue'),
--       (17, 'away', 'white');

---- Porto
--INSERT INTO KitColor (team_id, kitType, kitColor)
--VALUES (18, 'home', 'blue (with white stripes vertically)'),
--       (18, 'away', 'yellow');


---- Liverpool
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (3, 'Nike');

---- Real Madrid
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (4, 'Adidas');

---- Borussia Dortmund
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (5, 'Puma');

---- Chelsea
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (6, 'Nike');

---- RB Leipzig
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (7, 'Red Bull');

---- Man City
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (8, 'Puma');

---- PSG
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (9, 'Nike');

---- Bayern Munich
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (10, 'Adidas');

---- AC Milan
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (11, 'Puma');

---- Tottenham
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (12, 'Nike');

---- Eintracht Frankfurt
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (13, 'Indeed');

---- Napoli
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (14, 'Kappa');

---- Club Brugge
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (15, 'Macron');

---- Benfica
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (16, 'Emirates');

---- Inter
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (17, 'Pirelli');

---- Porto
--INSERT INTO Sponsorship (team_id, sponsor_Name)
--VALUES (18, 'New Balance');


--INSERT INTO Referee (referee_name, nationality, dob, socialMedia_ID)
--VALUES ('Slavko Vincic', 'Nationality1', '2000-01-01', NULL),
--       ('Halil Umut Meler', 'Nationality2', '2000-02-02', 32),
--       ('Felix Zwayer', 'Nationality3', '2000-03-03', 33),
--       ('Clement Turpin', 'Nationality4', '2000-04-04', 35),
--       ('Anthony Taylor', 'Nationality5', '2000-05-05', 37),
--       ('Danny Makkelie', 'Nationality6', '2000-06-06', 38),
--       ('Szymon Marciniak', 'Nationality7', '2000-07-07', 39),
--       ('Daniele Orsato', 'Nationality8', '2000-08-08', 40),
--       ('Carlos del cerro Grande', 'Nationality9', '2000-09-09', NULL),
--       ('Artur Soares Dias', 'Nationality10', '2000-10-10', 36),
--       ('Jesus Gil Manzaro', 'Nationality11', '2000-11-11', NULL),
--       ('Istvan Kovacs', 'Nationality12', '2000-12-12', NULL),
--       ('Michael Oliver', 'Nationality13', '2000-01-13', NULL),
--       ('Francois Letexier', 'Nationality14', '2000-02-14', 41),
--       ('Srotan Jovanovic', 'Nationality15', '2000-03-15', NULL),
--       ('Sandro Scharer', 'Nationality16', '2000-04-16', 34),
--       ('Davide Massa', 'Nationality17', '2000-05-17', 31),
--       ('Serdar Gozubuyuk', 'Nationality18', '2000-06-18', 30);


---- RB Leipzig vs Man City
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-02-22', 3, 4, 1, 1, NULL, 45228, 19, 2);

---- RB Leipzig vs Man City (Second Match)
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-03-14', 4, 3, 0, 7, 4, 52038, 2, 1);

---- Club Brugge vs Benfica
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-02-15', 16, 17, 0, 2, 17, 24136, 18, 3);

---- Club Brugge vs Benfica
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-03-07', 17, 16, 5, 1, 17, 60960, 3, 4);

---- Liverpool vs Real Madrid
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-02-21', 3, 4, 2, 5, 4, 52337, 17, NULL);

---- Real Madrid vs Liverpool
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-03-15', 4, 3, 1, 0, 4, 63127, 4, 6);

---- AC Milan vs Tottenham
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-02-14', 11, 12, 1, 0, 11, 74320, 17, 7);

---- Tottenham vs AC Milan
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-03-08', 12, 11, 0, 0, NULL, 61602, 5, 8);

---- Frankfurt vs Napoli
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-02-21', 13, 14, 0, 2, 14, 47500, 11, 9);

---- Napoli vs Frankfurt
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-03-15', 14, 13, 3, 0, 14, 49082, 6, 10);

---- Dortmund vs Chelsea
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-02-15', 6, 7, 1, 0, 6, 81365, 11, 11);

---- Chelsea vs Dortmund
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-03-07', 7, 6, 2, 0, 7, 38882, 6, 12);

---- Inter vs Porto
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-02-22', 17, 18, 1, 0, 17, 75374, 16, 7);
---- Porto vs Inter
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-03-14', 18, 17, 0, 0, NULL, 48015, 8, 13);

---- PSG vs Bayern Munich
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-02-14', 10, 9, 0, 1, 9, 46435, 14, 14);

---- Bayern Munich vs PSG
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-03-08', 9, 10, 2, 0, 9, 75000, 9, 15);

---- Real Madrid vs Chelsea
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-04-12', 5, 6, 2, 0, 4, 63142, 15, 6);

---- Chelsea vs Real Madrid
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-04-18', 6, 5, 0, 2, 5, 39453, 18, 12);

---- Benfica vs Inter
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-04-11', 16, 17, 0, 2, 17, 62594, 14, 16);

---- Inter vs Benfica
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-04-19', 17, 16, 3, 3, NULL, 75380, 10, 7);

---- Mancity vs Bayern
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-04-11', 8, 10, 3, 0, 8, 52257, 11, 1);

---- Bayern vs Mancity
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-04-19', 10, 8, 1, 1, NULL, 75000, 5, 15);

---- Milan vs Napoli
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-04-12', 11, 14, 1, 0, 11, 74742, 12, 7);

---- Napoli vs Milan
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-04-18', 14, 11, 1, 1, NULL, 52728, 8, 10);

---- Milan vs Inter
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-05-10', 11, 17, 0, 2, 17, 75532, 16, 7);

---- Inter vs Milan
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-05-16', 17, 11, 1, 0, 17, 75567, 5, 7);

---- Real vs Mancity
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-05-09', 4, 8, 1, 1, NULL, 63485, 11, 6);

---- Manchester City vs Real Madrid
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-05-17', 8, 4, 4, 0, 8, 52313, 8, 1);

---- Manchester City vs Inter Milan
--INSERT INTO Matches (date, homeTeam_id, awayTeam_id, homeTeam_score, awayTeam_score, winner_id, spectators, referee_id, stadium_id)
--VALUES ('2023-06-10', 8, 17, 1, 0, 8, 71412, 8, 17);



---- Round of 16 - First Leg
--INSERT INTO [Stage/Matches] (stage_name, matches_id)
--VALUES ('Round of 16 - First Leg', '5'), ('Round of 16 - First Leg', '7'), ('Round of 16 - First Leg', '9'), ('Round of 16 - First Leg', '11'),
--       ('Round of 16 - First Leg', '13'), ('Round of 16 - First Leg', '15'), ('Round of 16 - First Leg', '17');

---- Round of 16 - Second Leg
--INSERT INTO [Stage/Matches] (stage_name, matches_id)
--VALUES ('Round of 16 - Second Leg', '6'), ('Round of 16 - Second Leg', '8'), ('Round of 16 - Second Leg', '10'), ('Round of 16 - Second Leg', '12'),
--       ('Round of 16 - Second Leg', '14'), ('Round of 16 - Second Leg', '16'), ('Round of 16 - Second Leg', '18');

---- Quarterfinals - First Leg
--INSERT INTO [Stage/Matches] (stage_name, matches_id)
--VALUES ('Quarterfinals - First Leg', '19'), ('Quarterfinals - First Leg', '21'), ('Quarterfinals - First Leg', '23'), ('Quarterfinals - First Leg', '25');

---- Quarterfinals - Second Leg
--INSERT INTO [Stage/Matches] (stage_name, matches_id)
--VALUES ('Quarterfinals - Second Leg', '20'), ('Quarterfinals - Second Leg', '22'), ('Quarterfinals - Second Leg', '24'), ('Quarterfinals - Second Leg', '26');

---- Semifinals - First Leg
--INSERT INTO [Stage/Matches] (stage_name, matches_id)
--VALUES ('Semifinals - First Leg', '27'), ('Semifinals - First Leg', '29');

---- Semifinals - Second Leg
--INSERT INTO [Stage/Matches] (stage_name, matches_id)
--VALUES ('Semifinals - Second Leg', '28'), ('Semifinals - Second Leg', '30');

---- Final
--INSERT INTO [Stage/Matches] (stage_name, matches_id)
--VALUES ('Final', '31');

