\! cls
/* ------  Strukturen ----- */

/* 	 
	NULL wird nicht mehr zugelassen
    DEFAULT-Werte eintragen
*/


/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS boo.test;

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE IF NOT EXISTS boo.test
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0
);

/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE test;

/* ----- Daten ------- */
INSERT INTO test(name,age) VALUES ("Maxine",29);
INSERT INTO test(age,name) VALUES (35,"Max");
INSERT INTO test VALUES ();

-- ABER: Doppelte Datensätze werden zugelassen !
INSERT INTO test(age,name) VALUES (35,"Max");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;

