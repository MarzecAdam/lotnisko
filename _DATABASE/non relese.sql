DROP DATABASE lotnisko;
CREATE DATABASE lotnisko;
USE lotnisko;
CREATE TABLE lina_lotnicza(
	id_lina_lotnicza INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nazwa VARCHAR(11) NOT NULL
);
CREATE TABLE terminale(
	id_terminale INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nazwa VARCHAR(11) NOT NULL
);
CREATE TABLE bramki(
	id_bramki INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nazwa VARCHAR(11) NOT NULL
);
CREATE TABLE airport(
	id_airport INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nazwa VARCHAR(11) NOT NULL
);
CREATE TABLE plane(
	id_plane INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nazwa VARCHAR(11) NOT NULL,
    id_lina_lotnicza INT NOT NULL
);
CREATE TABLE news(
	id_news INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_airport INT NOT NULL,
    title text NOT NULL,
    content text NOT NULL
);
CREATE TABLE users(
	id_users INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    login VARCHAR(55) NOT NULL,
    psw VARCHAR(55) NOT NULL,
    imię VARCHAR(30)NOT NULL,
    nazwisko VARCHAR(30) NOT NULL,
    dataurodzenia DATE NOT NULL,
    id_airport INT NOT NULL
);
CREATE TABLE lot_to_user(
	id_lot_to_user INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  id_users INT NOT NULL,
  id_active INT NOT NULL
);
CREATE TABLE active(
	id_active INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nr_lotu varchar(10) NOT NULL,
    id_plane INT NOT NULL,
    id_airport_start INT,
    id_airport_end INT NOT NULL,
    godzina_odprawy DATETIME NOT NULL,
    godzina_odlotu DATETIME NOT NULL,
    id_terminale INT NOT NULL,
    id_bramki INT NOT NULL
);

ALTER TABLE plane
ADD FOREIGN KEY (id_lina_lotnicza) REFERENCES lina_lotnicza(id_lina_lotnicza);

ALTER TABLE news
ADD FOREIGN KEY (id_airport) REFERENCES airport(id_airport);

ALTER TABLE users
ADD FOREIGN KEY (id_airport) REFERENCES airport(id_airport);

ALTER TABLE lot_to_user
ADD FOREIGN KEY (id_active) REFERENCES active(id_active);

ALTER TABLE lot_to_user
ADD FOREIGN KEY (id_users) REFERENCES users(id_users);

ALTER TABLE active
ADD FOREIGN KEY (id_airport_start) REFERENCES airport(id_airport);

ALTER TABLE active
ADD FOREIGN KEY (id_airport_end) REFERENCES airport(id_airport);

ALTER TABLE active
ADD FOREIGN KEY (id_plane) REFERENCES plane(id_plane);

ALTER TABLE active
ADD FOREIGN KEY (id_terminale) REFERENCES terminale(id_terminale);

ALTER TABLE active
ADD FOREIGN KEY (id_bramki) REFERENCES bramki(id_bramki);

 
 
 
 
 