-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema wonderdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `wonderdb` ;

-- -----------------------------------------------------
-- Schema wonderdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `wonderdb` DEFAULT CHARACTER SET utf8 ;
USE `wonderdb` ;

-- -----------------------------------------------------
-- Table `wonder`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `wonder` ;

CREATE TABLE IF NOT EXISTS `wonder` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL,
  `description` TEXT NULL,
  `construction_date` SMALLINT UNSIGNED NULL,
  `era` ENUM('BC', 'AD') NOT NULL,
  `latitude` DECIMAL(8,6) NULL,
  `longitude` DECIMAL(9,6) NULL,
  `wiki_url` VARCHAR(1000) NULL,
  `pic_url` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO wonderuser@localhost;
 DROP USER wonderuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'wonderuser'@'localhost' IDENTIFIED BY 'seven';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'wonderuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `wonder`
-- -----------------------------------------------------
START TRANSACTION;
USE `wonderdb`;
INSERT INTO `wonder` (`id`, `name`, `description`, `construction_date`, `era`, `latitude`, `longitude`, `wiki_url`, `pic_url`) VALUES (1, 'Pyramids of Giza', 'The Great Pyramid of Giza (also known as the Pyramid of Khufu or the Pyramid of Cheops) is the oldest and largest of the three pyramids in the Giza pyramid complex bordering what is now El Giza, Egypt.', 2580, 'BC', 31.1342, 29.9792, 'https://en.wikipedia.org/wiki/Giza_pyramid_complex', 'https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg');
INSERT INTO `wonder` (`id`, `name`, `description`, `construction_date`, `era`, `latitude`, `longitude`, `wiki_url`, `pic_url`) VALUES (2, 'Mausoleum at Halicarnassus', 'The Mausoleum at Halicarnassus or Tomb of Mausolus was a tomb built between 353 and 350 BC at Halicarnassus (present Bodrum, Turkey) for Mausolus, a satrap in the Persian Empire, and his sister-wife Artemisia II of Caria. The structure was designed by the Greek architects Satyros and Pythius of Priene.', 353, 'BC', 27.4244, 37.0381, NULL, NULL);

COMMIT;

