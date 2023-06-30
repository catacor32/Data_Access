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