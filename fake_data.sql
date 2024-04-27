USE cinema_2;

-- Ajout de fausses données dans la table "cinema"
INSERT INTO cinema (adress) VALUES
    ('123 Rue de la République'),
    ('456 Avenue des Champs-Élysées'),
    ('789 Boulevard Saint-Germain');

-- Ajout de fausses données dans la table "salle"
INSERT INTO salle (number_of_places, cinema_id) VALUES
    (100, 1),
    (150, 1),
    (120, 2),
    (200, 3);

-- Ajout de fausses données dans la table "film"
INSERT INTO film (name, gender, duration, minimum_age) VALUES
    ('le seigneur des anneaux', 'heroic fantasy', 180, 12),
    ('the immitation game', 'drama', 90, 8),
    ('the social network', 'Drama', 120, 12);

-- Ajout de fausses données dans la table "seance"
INSERT INTO seance (houre, salle_id, film_id) VALUES
    ('2024-04-27 15:00:00', 1, 1),
    ('2024-04-27 18:00:00', 2, 2), 
    ('2024-04-28 14:00:00', 3, 3); 

-- Ajout de fausses données dans la table "tarif"
INSERT INTO tarif (name, price) VALUES
    ('Plein tarif', 9.20),
    ('Étudiant', 7.60),
    ('Moins de 14 ans', 5.90);

-- Ajout de fausses données dans la table "users"
INSERT INTO users (email, pass_word, roles) VALUES
    ('paul@gmail.com', SHA2('password1',256), 'standard'),
    ('bertrand@free.fr', SHA2('password2', 256), 'standard'),
    ('admin@admin.com', SHA2('adminpassword',256), 'admin');

-- Ajout de fausses données dans la table "reservation"
INSERT INTO reservation (seance_id, user_id) VALUES
    (1, 1), 
    (2, 2), 
    (3, 3); 

-- Ajout de fausses données dans la table "tarif_seance"
INSERT INTO tarif_seance (seance_id, tarif_id) VALUES
    (1, 1), 
    (2, 2), 
    (3, 3); 

