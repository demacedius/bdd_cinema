

CREATE DATABASE cinema;

USE cinema;

CREATE TABLE cinema(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	adress VARCHAR(255)
);

CREATE TABLE salle(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	number_of_places INTEGER,
	cinema_id INTEGER NOT NULL, 
	FOREIGN KEY (cinema_id) REFERENCES cinema(id)
);

CREATE TABLE film(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(255),
	gender VARCHAR(255),
	duration INTEGER,
	minimum_age INTEGER
);

CREATE TABLE seance(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	houre DATETIME,
	salle_id INTEGER NOT NULL ,
	film_id INTEGER NOT NULL ,
	FOREIGN KEY (salle_id) REFERENCES salle(id),
	FOREIGN KEY (film_id) REFERENCES film(id)
);

CREATE TABLE tarif(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(255),
	price FLOAT
);

CREATE TABLE users(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	email VARCHAR(255),
	pass_word VARCHAR(255),
	roles VARCHAR(155)
);

CREATE TABLE reservation(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	seance_id INTEGER NOT NULL,
	user_id INTEGER NOT NULL,
	FOREIGN KEY (seance_id) REFERENCES seance(id),
	FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE tarif_seance (
	seance_id INTEGER,
	tarif_id INTEGER,
	FOREIGN KEY (seance_id) REFERENCES seance(id),
	FOREIGN KEY (tarif_id) REFERENCES tarif(id)
);
