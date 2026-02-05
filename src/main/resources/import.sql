-- =============================================================================
-- 1. MANCHESTER CITY (ID: 1)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (1, 'Manchester City', 200000000);

-- SKŁAD PODSTAWOWY
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Ederson', 'Moraes', 30, 88, 45, 88, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Kyle', 'Walker', 33, 84, 65, 82, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Ruben', 'Dias', 26, 89, 40, 90, 91, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'John', 'Stones', 29, 85, 60, 85, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Josko', 'Gvardiol', 22, 82, 55, 83, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Rodri', 'Hernandez', 27, 89, 75, 89, 90, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Mateo', 'Kovacic', 29, 82, 70, 72, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Kevin', 'De Bruyne', 32, 91, 90, 60, 91, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Bernardo', 'Silva', 29, 88, 84, 70, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Phil', 'Foden', 23, 86, 88, 50, 94, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Erling', 'Haaland', 23, 91, 95, 40, 96, true);

-- REZERWOWI
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Stefan', 'Ortega', 31, 80, 40, 80, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Nathan', 'Ake', 29, 81, 50, 82, 81, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Manuel', 'Akanji', 28, 82, 45, 83, 84, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Matheus', 'Nunes', 25, 79, 72, 68, 83, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (1, 'Jeremy', 'Doku', 21, 81, 85, 30, 90, false);

-- =============================================================================
-- 2. ARSENAL FC (ID: 2)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (2, 'Arsenal FC', 120000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'David', 'Raya', 28, 84, 45, 84, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Ben', 'White', 26, 82, 60, 81, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'William', 'Saliba', 22, 85, 40, 87, 92, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Gabriel', 'Magalhaes', 26, 84, 45, 85, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Oleksandr', 'Zinchenko', 27, 80, 72, 75, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Declan', 'Rice', 25, 86, 75, 86, 91, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Thomas', 'Partey', 30, 83, 68, 82, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Martin', 'Odegaard', 25, 88, 89, 58, 91, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Bukayo', 'Saka', 22, 87, 90, 55, 93, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Gabriel', 'Martinelli', 22, 84, 86, 40, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Kai', 'Havertz', 24, 82, 81, 50, 87, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Aaron', 'Ramsdale', 25, 82, 40, 82, 85, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Jurrien', 'Timber', 22, 79, 55, 80, 87, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Jakub', 'Kiwior', 24, 77, 45, 78, 83, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Jorginho', 'Frello', 32, 81, 75, 70, 81, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (2, 'Gabriel', 'Jesus', 26, 82, 82, 40, 84, false);

-- =============================================================================
-- 3. LIVERPOOL FC (ID: 3)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (3, 'Liverpool FC', 100000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Alisson', 'Becker', 31, 89, 45, 90, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Trent', 'Alexander-Arnold', 25, 86, 85, 75, 90, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Ibrahima', 'Konate', 24, 83, 35, 84, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Virgil', 'van Dijk', 32, 89, 60, 92, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Andrew', 'Robertson', 29, 85, 78, 81, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Alexis', 'Mac Allister', 25, 84, 80, 78, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Dominik', 'Szoboszlai', 23, 82, 84, 65, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Wataru', 'Endo', 31, 80, 60, 81, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Mohamed', 'Salah', 31, 89, 93, 40, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Darwin', 'Nunez', 24, 82, 83, 35, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Luis', 'Diaz', 27, 84, 86, 40, 85, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Joe', 'Gomez', 26, 79, 50, 80, 81, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Harvey', 'Elliott', 20, 77, 78, 50, 87, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Diogo', 'Jota', 27, 82, 84, 45, 84, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Cody', 'Gakpo', 24, 81, 81, 40, 86, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (3, 'Stefan', 'Bajcetic', 19, 72, 60, 70, 86, false);

-- =============================================================================
-- 4. MANCHESTER UNITED (ID: 4)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (4, 'Manchester United', 150000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Andre', 'Onana', 27, 85, 48, 85, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Diogo', 'Dalot', 24, 80, 70, 78, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Lisandro', 'Martinez', 26, 84, 55, 86, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Harry', 'Maguire', 30, 79, 50, 80, 79, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Luke', 'Shaw', 28, 82, 74, 80, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Casemiro', 'Venancio', 31, 84, 65, 85, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Kobbie', 'Mainoo', 18, 77, 72, 74, 90, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Bruno', 'Fernandes', 29, 88, 88, 65, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Alejandro', 'Garnacho', 19, 79, 84, 30, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Marcus', 'Rashford', 26, 83, 85, 35, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Rasmus', 'Hojlund', 21, 78, 81, 30, 88, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Altay', 'Bayindir', 25, 76, 35, 76, 81, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Victor', 'Lindelof', 29, 80, 45, 80, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Mason', 'Mount', 25, 81, 78, 60, 85, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Christian', 'Eriksen', 31, 80, 82, 50, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (4, 'Amad', 'Diallo', 21, 74, 76, 25, 85, false);

-- =============================================================================
-- 5. CHELSEA FC (ID: 5)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (5, 'Chelsea FC', 135000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Robert', 'Sanchez', 26, 81, 45, 81, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Reece', 'James', 24, 83, 75, 80, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Levi', 'Colwill', 21, 80, 50, 81, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Axel', 'Disasi', 25, 79, 45, 80, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Marc', 'Cucurella', 25, 79, 68, 77, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Enzo', 'Fernandez', 23, 83, 80, 75, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Moises', 'Caicedo', 22, 82, 65, 83, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Cole', 'Palmer', 21, 86, 89, 40, 93, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Pedro', 'Neto', 24, 82, 84, 35, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Christopher', 'Nkunku', 26, 84, 86, 40, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Nicolas', 'Jackson', 22, 79, 82, 30, 86, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Filip', 'Jorgensen', 22, 76, 40, 76, 84, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Malo', 'Gusto', 20, 80, 72, 78, 88, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Romeo', 'Lavia', 20, 77, 60, 75, 87, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Noni', 'Madueke', 22, 81, 83, 30, 87, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (5, 'Joao', 'Felix', 24, 81, 83, 35, 85, false);

-- =============================================================================
-- 6. TOTTENHAM HOTSPUR (ID: 6)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (6, 'Tottenham Hotspur', 95000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Guglielmo', 'Vicario', 27, 83, 45, 83, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Pedro', 'Porro', 24, 82, 80, 76, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Cristian', 'Romero', 25, 85, 50, 86, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Micky', 'van de Ven', 22, 82, 45, 84, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Destiny', 'Udogie', 21, 81, 74, 78, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Yves', 'Bissouma', 27, 81, 65, 80, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Pape', 'Matar Sarr', 21, 79, 70, 74, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'James', 'Maddison', 27, 86, 88, 45, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Dejan', 'Kulusevski', 23, 83, 83, 55, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Son', 'Heung-min', 31, 87, 90, 40, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Dominic', 'Solanke', 26, 81, 83, 35, 83, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Fraser', 'Forster', 35, 75, 40, 75, 75, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Radu', 'Dragusin', 22, 77, 30, 78, 85, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Rodrigo', 'Bentancur', 26, 82, 75, 78, 84, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Brennan', 'Johnson', 22, 79, 82, 30, 86, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (6, 'Timo', 'Werner', 27, 78, 80, 30, 79, false);

-- =============================================================================
-- 7. ASTON VILLA (ID: 7)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (7, 'Aston Villa', 75000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Emi', 'Martinez', 31, 87, 45, 87, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Matty', 'Cash', 26, 79, 72, 77, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Ezri', 'Konsa', 26, 82, 40, 83, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Pau', 'Torres', 27, 83, 55, 82, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Lucas', 'Digne', 30, 80, 76, 76, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Amadou', 'Onana', 22, 81, 60, 82, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Youri', 'Tielemans', 26, 82, 81, 68, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'John', 'McGinn', 29, 82, 78, 75, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Leon', 'Bailey', 26, 82, 85, 35, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Morgan', 'Rogers', 21, 76, 78, 40, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Ollie', 'Watkins', 28, 85, 87, 40, 86, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Robin', 'Olsen', 34, 74, 40, 74, 74, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Ian', 'Maatsen', 21, 78, 74, 74, 86, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Ross', 'Barkley', 30, 78, 77, 60, 78, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Jacob', 'Ramsey', 22, 78, 78, 55, 86, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (7, 'Jhon', 'Duran', 20, 76, 79, 30, 86, false);

-- =============================================================================
-- 8. NEWCASTLE UNITED (ID: 8)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (8, 'Newcastle United', 85000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Nick', 'Pope', 31, 83, 40, 83, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Kieran', 'Trippier', 33, 83, 84, 78, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Fabian', 'Schar', 32, 82, 65, 82, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Sven', 'Botman', 24, 83, 40, 84, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Dan', 'Burn', 31, 79, 50, 80, 79, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Bruno', 'Guimaraes', 26, 85, 80, 82, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Sandro', 'Tonali', 23, 83, 76, 80, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Joelinton', 'Cassio', 27, 82, 75, 81, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Anthony', 'Gordon', 23, 82, 84, 45, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Alexander', 'Isak', 24, 85, 88, 35, 90, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Harvey', 'Barnes', 26, 80, 81, 35, 83, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Martin', 'Dubravka', 35, 78, 40, 78, 78, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Tino', 'Livramento', 21, 78, 73, 75, 87, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Joe', 'Willock', 24, 78, 76, 70, 83, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Miguel', 'Almiron', 30, 79, 79, 50, 79, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (8, 'Callum', 'Wilson', 31, 80, 82, 30, 80, false);

-- =============================================================================
-- 9. WEST HAM UNITED (ID: 9)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (9, 'West Ham United', 60000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Alphonse', 'Areola', 30, 81, 40, 81, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Aaron', 'Wan-Bissaka', 26, 80, 60, 82, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Max', 'Kilman', 26, 79, 40, 80, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Jean-Clair', 'Todibo', 24, 80, 45, 81, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Emerson', 'Palmieri', 29, 78, 73, 75, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Edson', 'Alvarez', 26, 81, 60, 82, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Guido', 'Rodriguez', 29, 81, 55, 82, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Lucas', 'Paqueta', 26, 84, 85, 65, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Jarrod', 'Bowen', 27, 83, 85, 45, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Mohammed', 'Kudus', 23, 82, 85, 40, 89, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Michail', 'Antonio', 33, 78, 79, 45, 78, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Lukasz', 'Fabianski', 38, 78, 40, 78, 78, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Konstantinos', 'Mavropanos', 26, 77, 35, 78, 81, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Tomas', 'Soucek', 28, 79, 74, 80, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Crysencio', 'Summerville', 22, 79, 82, 30, 86, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (9, 'Niclas', 'Fullkrug', 31, 80, 82, 35, 80, false);

-- =============================================================================
-- 10. BRIGHTON & HOVE ALBION (ID: 10)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (10, 'Brighton Albion', 50000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Bart', 'Verbruggen', 21, 78, 40, 78, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Joel', 'Veltman', 32, 77, 55, 78, 77, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Lewis', 'Dunk', 32, 81, 60, 82, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Jan Paul', 'van Hecke', 23, 78, 40, 79, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Pervis', 'Estupinan', 26, 80, 78, 77, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Carlos', 'Baleba', 20, 75, 62, 75, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Mats', 'Wieffer', 24, 79, 70, 78, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Joao', 'Pedro', 22, 79, 81, 40, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Yankuba', 'Minteh', 19, 76, 80, 30, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Kaoru', 'Mitoma', 26, 81, 84, 40, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Danny', 'Welbeck', 33, 77, 78, 40, 77, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Jason', 'Steele', 33, 76, 40, 76, 76, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Igor', 'Julio', 26, 76, 40, 77, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Ferdi', 'Kadioglu', 24, 79, 76, 76, 85, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Simon', 'Adingra', 22, 77, 80, 30, 86, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (10, 'Evan', 'Ferguson', 19, 76, 79, 30, 89, false);

-- =============================================================================
-- LEAGUE TABLE INIT
-- =============================================================================
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (1, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (2, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (3, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (4, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (6, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (7, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (8, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (9, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (10, 0, 0, 0, 0, 0, 0, 0);

UPDATE players SET market_value = (overall * 1000000) + ((potential - overall) * 2000000) - (age * 300000);

INSERT INTO game_state (id, game_date, current_week) VALUES (1, '2026-07-30', 1);
UPDATE players SET stamina = 100;