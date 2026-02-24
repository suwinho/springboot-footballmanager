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
-- 11. BRENTFORD FC (ID: 11)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (11, 'Brentford FC', 40000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Mark', 'Flekken', 30, 81, 45, 81, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Nathan', 'Collins', 22, 78, 40, 79, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Ethan', 'Pinnock', 30, 79, 45, 80, 79, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Christian', 'Norgaard', 30, 80, 65, 81, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Mathias', 'Jensen', 28, 78, 77, 65, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Bryan', 'Mbeumo', 24, 82, 84, 40, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Yoane', 'Wissa', 27, 78, 80, 35, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Vitaly', 'Janelt', 25, 77, 68, 75, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Kristoffer', 'Ajer', 25, 77, 55, 78, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Rico', 'Henry', 26, 78, 72, 75, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Kevin', 'Schade', 22, 75, 77, 30, 83, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Hakon', 'Valdimarsson', 22, 72, 40, 72, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Ben', 'Mee', 34, 77, 40, 78, 77, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Mikkel', 'Damsgaard', 23, 76, 78, 45, 82, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Fabio', 'Carvalho', 21, 75, 76, 40, 84, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (11, 'Igor', 'Thiago', 22, 75, 78, 30, 82, false);

-- =============================================================================
-- 12. CRYSTAL PALACE (ID: 12)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (12, 'Crystal Palace', 45000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Dean', 'Henderson', 27, 80, 45, 80, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Marc', 'Guehi', 23, 83, 40, 84, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Joachim', 'Andersen', 27, 81, 60, 82, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Adam', 'Wharton', 20, 77, 75, 72, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Eberechi', 'Eze', 25, 83, 86, 45, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Jean-Philippe', 'Mateta', 26, 80, 82, 35, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Tyrick', 'Mitchell', 24, 77, 65, 76, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Daniel', 'Munoz', 27, 78, 70, 75, 79, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Cheick', 'Doucoure', 24, 79, 68, 80, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Jefferson', 'Lerma', 29, 78, 65, 79, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Daichi', 'Kamada', 27, 80, 81, 55, 81, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Remi', 'Matthews', 30, 70, 40, 70, 70, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Chadi', 'Riad', 20, 75, 35, 76, 84, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Will', 'Hughes', 28, 75, 72, 70, 75, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Ismaila', 'Sarr', 26, 78, 80, 35, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (12, 'Eddie', 'Nketiah', 24, 77, 79, 30, 82, false);

-- =============================================================================
-- 13. FULHAM FC (ID: 13)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (13, 'Fulham FC', 35000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Bernd', 'Leno', 32, 82, 45, 82, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Antonee', 'Robinson', 26, 79, 74, 76, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Kenny', 'Tete', 28, 77, 65, 77, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Issa', 'Diop', 27, 77, 35, 78, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Calvin', 'Bassey', 24, 76, 40, 77, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Sander', 'Berge', 26, 78, 70, 78, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Andreas', 'Pereira', 28, 79, 80, 55, 79, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Emile', 'Smith Rowe', 23, 78, 80, 45, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Alex', 'Iwobi', 27, 77, 78, 50, 77, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Adama', 'Traore', 28, 76, 81, 30, 76, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Raul', 'Jimenez', 32, 76, 78, 30, 76, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Steven', 'Benda', 25, 71, 40, 71, 75, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Harrison', 'Reed', 29, 75, 68, 74, 75, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Harry', 'Wilson', 26, 76, 77, 35, 77, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Timothy', 'Castagne', 28, 77, 68, 76, 77, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (13, 'Rodrigo', 'Muniz', 22, 74, 76, 25, 81, false);

-- =============================================================================
-- 14. BOURNEMOUTH (ID: 14)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (14, 'Bournemouth', 30000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Kepa', 'Arrizabalaga', 29, 80, 45, 80, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Illia', 'Zabarnyi', 21, 78, 35, 80, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Marcos', 'Senesi', 26, 78, 50, 79, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Milos', 'Kerkez', 20, 77, 75, 74, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Lewis', 'Cook', 27, 77, 70, 76, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Ryan', 'Christie', 29, 77, 76, 65, 77, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Marcus', 'Tavernier', 24, 78, 79, 60, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Justin', 'Kluivert', 24, 77, 79, 35, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Antoine', 'Semenyo', 24, 78, 80, 40, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Evanilson', 'Lima', 24, 78, 81, 30, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Julian', 'Araujo', 22, 75, 72, 74, 82, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Mark', 'Travers', 24, 74, 40, 74, 79, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Dean', 'Huijsen', 18, 73, 40, 74, 87, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Tyler', 'Adams', 25, 78, 60, 80, 83, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Alex', 'Scott', 20, 74, 75, 65, 85, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (14, 'Luis', 'Sinisterra', 24, 79, 82, 35, 81, false);

-- =============================================================================
-- 15. EVERTON FC (ID: 15)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (15, 'Everton FC', 25000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Jordan', 'Pickford', 30, 83, 45, 83, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'James', 'Tarkowski', 31, 80, 45, 81, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Jarrad', 'Branthwaite', 21, 80, 40, 82, 88, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Vitaliy', 'Mykolenko', 24, 78, 70, 77, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Ashley', 'Young', 38, 75, 72, 73, 75, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Idrissa', 'Gueye', 34, 78, 60, 80, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Abdoulaye', 'Doucoure', 31, 78, 77, 72, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Dwight', 'McNeil', 24, 78, 78, 55, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Jack', 'Harrison', 27, 77, 78, 45, 77, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Dominic', 'Calvert-Lewin', 27, 78, 80, 35, 79, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Iliman', 'Ndiaye', 24, 76, 78, 40, 82, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Joao', 'Virginia', 24, 71, 40, 71, 77, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Michael', 'Keane', 31, 76, 40, 77, 76, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Orel', 'Mangala', 26, 77, 68, 75, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Tim', 'Iroegbunam', 20, 71, 65, 68, 82, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (15, 'Beto', 'Gomes', 26, 76, 78, 30, 78, false);

-- =============================================================================
-- 16. WOLVERHAMPTON (ID: 16)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (16, 'Wolverhampton', 32000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Jose', 'Sa', 31, 80, 45, 80, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Craig', 'Dawson', 33, 78, 40, 79, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Toti', 'Gomes', 25, 77, 40, 78, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Rayan', 'Ait-Nouri', 22, 79, 78, 74, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Nelson', 'Semedo', 30, 78, 74, 76, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Mario', 'Lemina', 30, 79, 70, 80, 79, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Joao', 'Gomes', 23, 78, 68, 80, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Matheus', 'Cunha', 24, 81, 83, 40, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Hwang', 'Hee-chan', 28, 79, 81, 35, 79, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Jorgen', 'Larsen', 24, 77, 80, 30, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Andre', 'Trindade', 22, 78, 72, 76, 85, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Dan', 'Bentley', 30, 72, 40, 72, 72, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Santiago', 'Bueno', 25, 75, 35, 76, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Jean-Ricner', 'Bellegarde', 25, 76, 75, 65, 78, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Pablo', 'Sarabia', 31, 79, 81, 40, 79, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (16, 'Goncalo', 'Guedes', 27, 77, 79, 35, 77, false);

-- =============================================================================
-- 17. NOTTINGHAM FOREST (ID: 17)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (17, 'Nottingham Forest', 28000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Matz', 'Sels', 32, 78, 45, 78, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Murillo', 'Santiago', 21, 79, 45, 80, 87, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Nikola', 'Milenkovic', 26, 79, 40, 80, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Ola', 'Aina', 27, 77, 72, 75, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Neco', 'Williams', 22, 76, 73, 74, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Ibrahim', 'Sangare', 26, 78, 65, 80, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Elliot', 'Anderson', 21, 76, 75, 68, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Morgan', 'Gibbs-White', 24, 81, 82, 60, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Callum', 'Hudson-Odoi', 23, 78, 80, 35, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Anthony', 'Elanga', 21, 78, 81, 30, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Chris', 'Wood', 32, 77, 80, 30, 77, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Carlos', 'Miguel', 25, 74, 40, 74, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Morato', 'Rodrigues', 22, 75, 35, 76, 81, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'James', 'Ward-Prowse', 29, 80, 83, 65, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Nicolas', 'Dominguez', 25, 77, 70, 76, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (17, 'Taiwo', 'Awoniyi', 26, 77, 79, 30, 79, false);

-- =============================================================================
-- 18. LEICESTER CITY (ID: 18)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (18, 'Leicester City', 22000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Mads', 'Hermansen', 23, 76, 45, 76, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Wout', 'Faes', 25, 78, 40, 79, 81, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Jannik', 'Vestergaard', 31, 76, 50, 77, 76, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Victor', 'Kristiansen', 21, 75, 70, 74, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'James', 'Justin', 26, 76, 72, 75, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Harry', 'Winks', 28, 76, 74, 72, 76, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Wilfred', 'Ndidi', 27, 78, 65, 80, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Facundo', 'Buonanotte', 19, 75, 78, 45, 86, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Stephy', 'Mavididi', 25, 77, 79, 35, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Abdul', 'Fatawu', 19, 74, 78, 30, 85, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Jamie', 'Vardy', 37, 76, 81, 25, 76, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Danny', 'Ward', 30, 73, 40, 73, 73, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Caleb', 'Okoli', 22, 74, 30, 75, 81, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Oliver', 'Skipp', 23, 76, 65, 76, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Bilal', 'El Khannouss', 19, 74, 77, 40, 86, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (18, 'Jordan', 'Ayew', 32, 75, 76, 40, 75, false);

-- =============================================================================
-- 19. IPSWICH TOWN (ID: 19)
-- =============================================================================
INSERT INTO teams (id, name, budget) VALUES (19, 'Ipswich Town', 20000000);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Arijanet', 'Muric', 25, 75, 45, 75, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Luke', 'Woolfenden', 25, 72, 35, 73, 76, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Jacob', 'Greaves', 23, 75, 40, 76, 82, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Leif', 'Davis', 24, 74, 78, 70, 80, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Axel', 'Tuanzebe', 26, 73, 40, 74, 75, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Sam', 'Morsy', 32, 73, 68, 74, 73, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Kalvin', 'Phillips', 28, 77, 65, 78, 78, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Sammie', 'Szmodics', 28, 75, 78, 45, 75, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Omari', 'Hutchinson', 20, 73, 75, 30, 84, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Jack', 'Clarke', 23, 77, 80, 35, 83, true);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Liam', 'Delap', 21, 72, 76, 25, 82, true);

INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Christian', 'Walton', 28, 71, 35, 71, 73, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Dara', 'OShea', 25, 75, 40, 76, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Jens', 'Cajuste', 24, 75, 70, 74, 80, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'Wes', 'Burns', 29, 71, 72, 45, 71, false);
INSERT INTO players (team_id, first_name, last_name, age, overall, offensive_stats, defensive_stats, potential, is_in_first_eleven) VALUES (19, 'George', 'Hirst', 25, 70, 72, 25, 74, false);

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
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (11, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (12, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (13, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (14, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (15, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (16, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (17, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (18, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO league_table (team_id, matches_played, wins, draws, losses, goals_scored, goals_conceded, points) VALUES (19, 0, 0, 0, 0, 0, 0, 0);

UPDATE players SET market_value = (overall * 1000000) + ((potential - overall) * 2000000) - (age * 300000);

INSERT INTO game_state (id, game_date, current_week) VALUES (1, '2026-07-30', 1);
UPDATE players SET stamina = 100;
UPDATE players SET injury_days = 0 WHERE injury_days IS NULL;