-- =============================================================================
-- 1. MANCHESTER CITY (ID: 1)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (1, 'Manchester City', 200000000);

-- SKŁAD PODSTAWOWY
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Ederson', 'Moraes', 30, 88, 45, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Kyle', 'Walker', 33, 84, 65, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Ruben', 'Dias', 26, 89, 40, 90, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'John', 'Stones', 29, 85, 60, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Josko', 'Gvardiol', 22, 82, 55, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Rodri', 'Hernandez', 27, 89, 75, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Mateo', 'Kovacic', 29, 82, 70, 72, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Kevin', 'De Bruyne', 32, 91, 90, 60, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Bernardo', 'Silva', 29, 88, 84, 70, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Phil', 'Foden', 23, 86, 88, 50, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Erling', 'Haaland', 23, 91, 95, 40, true);

-- REZERWOWI
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Stefan', 'Ortega', 31, 80, 40, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Nathan', 'Ake', 29, 81, 50, 82, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Manuel', 'Akanji', 28, 82, 45, 83, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Matheus', 'Nunes', 25, 79, 72, 68, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (1, 'Jeremy', 'Doku', 21, 81, 85, 30, false);

-- =============================================================================
-- 2. ARSENAL FC (ID: 2)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (2, 'Arsenal FC', 120000000);

-- SKŁAD PODSTAWOWY
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'David', 'Raya', 28, 84, 45, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Ben', 'White', 26, 82, 60, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'William', 'Saliba', 22, 85, 40, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Gabriel', 'Magalhaes', 26, 84, 45, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Oleksandr', 'Zinchenko', 27, 80, 72, 75, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Declan', 'Rice', 25, 86, 75, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Thomas', 'Partey', 30, 83, 68, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Martin', 'Odegaard', 25, 88, 89, 58, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Bukayo', 'Saka', 22, 87, 90, 55, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Gabriel', 'Martinelli', 22, 84, 86, 40, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Kai', 'Havertz', 24, 82, 81, 50, true);

-- REZERWOWI
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Aaron', 'Ramsdale', 25, 82, 40, 82, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Jurrien', 'Timber', 22, 79, 55, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Jakub', 'Kiwior', 24, 77, 45, 78, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Jorginho', 'Frello', 32, 81, 75, 70, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (2, 'Gabriel', 'Jesus', 26, 82, 82, 40, false);

-- =============================================================================
-- 3. LIVERPOOL FC (ID: 3)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (3, 'Liverpool FC', 100000000);

-- SKŁAD PODSTAWOWY
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Alisson', 'Becker', 31, 89, 45, 90, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Trent', 'Alexander-Arnold', 25, 86, 85, 75, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Ibrahima', 'Konate', 24, 83, 35, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Virgil', 'van Dijk', 32, 89, 60, 92, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Andrew', 'Robertson', 29, 85, 78, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Alexis', 'Mac Allister', 25, 84, 80, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Dominik', 'Szoboszlai', 23, 82, 84, 65, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Wataru', 'Endo', 31, 80, 60, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Mohamed', 'Salah', 31, 89, 93, 40, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Darwin', 'Nunez', 24, 82, 83, 35, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Luis', 'Diaz', 27, 84, 86, 40, true);

-- REZERWOWI
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Joe', 'Gomez', 26, 79, 50, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Harvey', 'Elliott', 20, 77, 78, 50, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Diogo', 'Jota', 27, 82, 84, 45, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Cody', 'Gakpo', 24, 81, 81, 40, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (3, 'Stefan', 'Bajcetic', 19, 72, 60, 70, false);

-- =============================================================================
-- 4. MANCHESTER UNITED (ID: 4)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (4, 'Manchester United', 150000000);

-- SKŁAD PODSTAWOWY
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Andre', 'Onana', 27, 85, 48, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Diogo', 'Dalot', 24, 80, 70, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Lisandro', 'Martinez', 26, 84, 55, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Harry', 'Maguire', 30, 79, 50, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Luke', 'Shaw', 28, 82, 74, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Casemiro', 'Venancio', 31, 84, 65, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Kobbie', 'Mainoo', 18, 77, 72, 74, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Bruno', 'Fernandes', 29, 88, 88, 65, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Alejandro', 'Garnacho', 19, 79, 84, 30, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Marcus', 'Rashford', 26, 83, 85, 35, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Rasmus', 'Hojlund', 21, 78, 81, 30, true);

-- REZERWOWI
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Altay', 'Bayindir', 25, 76, 35, 76, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Victor', 'Lindelof', 29, 80, 45, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Mason', 'Mount', 25, 81, 78, 60, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Christian', 'Eriksen', 31, 80, 82, 50, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, is_in_first_eleven) VALUES (4, 'Amad', 'Diallo', 21, 74, 76, 25, false);