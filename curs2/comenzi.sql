CREATE SCHEMA `universitate2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `universitate2023`.`utilizatori` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `email` VARCHAR(145) NULL,
  `telefon` CHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `telefon_UNIQUE` (`telefon` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE SCHEMA `magazin` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `magazin`.`produse`(
    `idproduse` INT UNSIGNED NOT NULL AUTO_INCREMENT KEY,
    `numep` VARCHAR(50) NOT NULL,
    `cantitate` INT,
    `numarfirma` INT UNIQUE,
    `numefirma` VARCHAR(50),
    `adresafirma` VARCHAR(150),
    `modelp` VARCHAR(150),
    `stoc` INT,
    `pret` DECIMAL(20,2),
    `categoriep` VARCHAR(50),
    `descriere` VARCHAR(200),
    `data_add` TIMESTAMP 
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `produse` (`idproduse`, `numep`, `cantitate`, `numarfirma`, `numefirma`, `adresafirma`, `modelp`, `stoc`, `pret`, `categoriep`, `descriere`, `data_add`)
VALUES (NULL, 'Cuptor', NULL, '1', 'Boch', 'Grigore Manolescu 22A', 'C23', '23', '231.45', 'Bucatarie', 'Cuptor electric', current_timestamp());

select * from student where data_nastere >= '1996-01-01';
select * from student where year(data_nastere) >= '1996';

SELECT * FROM `student` where year(data_nastere) >='1993' and year(data_nastere) <='1995';
SELECT * FROM `student` where year(data_nastere) between '1993' and '1995';

SELECT * FROM `profesor` where grad_didactic !='III';
SELECT * FROM `profesor` where grad_didactic ='I' or grad_didactic = 'II';
SELECT * FROM `profesor` where grad_didactic in('I','II');

SELECT * FROM `cursuri` WHERE an = '2' AND semestru = '2';

SELECT * FROM `student` WHERE prenume LIKE 'ion%';

SELECT * FROM `student` WHERE DATE_FORMAT(data_nastere,'%m-%d') = '09-21';

SELECT * FROM `student` WHERE bursa*12 >= 4000;
SELECT *, bursa*12 AS bursa_anuala FROM `student` WHERE bursa*12 >= 4000;

SELECT * FROM `student` ORDER BY nume ASC;
SELECT * FROM `student` ORDER BY nume DESC;
SELECT * FROM `student` ORDER BY rand() LIMIT 1;

SELECT * FROM `student` ORDER BY data_nastere DESC limit 5;
SELECT * FROM `student` ORDER BY data_nastere DESC limit 5,5;

SELECT * FROM `student` CROSS JOIN note;
SELECT * FROM cursuri c INNER JOIN note n on c.id_curs= n.id_curs;

SELECT * FROM `profesor` LEFT Join didactic ON profesor.id = didactic.id_prof where profesor.id = 6;

SELECT * FROM `profesor` LEFT Join didactic ON profesor.id = didactic.id_prof 
INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs
WHERE profesor.id = 6;

SELECT * FROM `profesor` LEFT Join didactic ON profesor.id = didactic.id_prof 
INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs LEFT JOIN note ON cursuri.id_curs = note.id_curs
WHERE profesor.id = 6;

SELECT profesor.nume, profesor.prenume, cursuri.titlu_curs, note.valoare FROM `profesor` 
LEFT Join didactic 
ON profesor.id = didactic.id_prof 
INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs
LEFT JOIN note ON cursuri.id_curs = note.id_curs
WHERE profesor.id = 6 AND note.valoare IS NOT NULL;

SELECT * FROM profesor AS p LEFT JOIN didactic AS d ON p.id = d.id_prof
WHERE d.id_prof IS NULL;

SELECT s.nume, s.prenume FROM `note` AS n INNER JOIN student AS s ON n.id_student = s.id GROUP BY n.id_student;

SELECT s.nume, s.prenume, n.valoare, AVG(n.valoare) AS 'medie nota' FROM `note` AS n LEFT JOIN student AS s ON n.id_student = s.id WHERE s.id = 111 GROUP BY s.id;

