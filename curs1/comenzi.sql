CREATE TABLE `myDB2023`.`Produse` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `nume` VARCHAR(100) NOT NULL ,
    `descriere` TEXT NULL ,
    `pret` DECIMAL(8,2) NOT NULL ,
    `stoc` INT NOT NULL DEFAULT '0' ,
    `producator` VARCHAR(250) NOT NULL ,
    `user_at` INT NOT NULL ,
    `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id`)) ENGINE = InnoDB;

INSERT INTO `Produse` (
    `id`,`nume`,`descriere`, `pret`, `stoc`, `producator`, `user_at`, `data_adaugare`) 
VALUES (
    NULL, 'Pix', 'Pix albastru nr. 1', '12.5', '10', 'Big', '1', current_timestamp());

SELECT * FROM `Produse`

DELETE FROM Produse WHERE `Produse`.`id` = "1"?

CREATE USER 'myDB2023'@'localhost'
IDENTIFIED VIA mysql_native_password USING '***';
GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* 
TO 'myDB2023'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
