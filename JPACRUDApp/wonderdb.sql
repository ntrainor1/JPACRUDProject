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
  `latitude` DECIMAL(9,6) NULL,
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
INSERT INTO `wonder` (`id`, `name`, `description`, `construction_date`, `era`, `latitude`, `longitude`, `wiki_url`, `pic_url`) VALUES (2, 'Mausoleum at Halicarnassus', 'The Mausoleum at Halicarnassus or Tomb of Mausolus was a tomb built between 353 and 350 BC at Halicarnassus (present Bodrum, Turkey) for Mausolus, a satrap in the Persian Empire, and his sister-wife Artemisia II of Caria. The structure was designed by the Greek architects Satyros and Pythius of Priene.', 353, 'BC', 27.4244, 37.0381, 'https://en.wikipedia.org/wiki/Mausoleum_at_Halicarnassus', 'https://upload.wikimedia.org/wikipedia/commons/d/d2/The_maussolleion_model_dsc02711-miniaturk_nevit.jpg');
INSERT INTO `wonder` (`id`, `name`, `description`, `construction_date`, `era`, `latitude`, `longitude`, `wiki_url`, `pic_url`) VALUES (3, 'Hanging Gardens of Babylon', 'The Hanging Gardens of Babylon were one of the Seven Wonders of the Ancient World as listed by Hellenic culture, described as a remarkable feat of engineering with an ascending series of tiered gardens containing a wide variety of trees, shrubs, and vines, resembling a large green mountain constructed of mud bricks, and said to have been built in the ancient city of Babylon, near present-day Hillah, Babil province, in Iraq.', 562, 'BC', 43.1640, 36.3566, 'https://en.wikipedia.org/wiki/Hanging_Gardens_of_Babylon', 'https://upload.wikimedia.org/wikipedia/commons/a/ae/Hanging_Gardens_of_Babylon.jpg');
INSERT INTO `wonder` (`id`, `name`, `description`, `construction_date`, `era`, `latitude`, `longitude`, `wiki_url`, `pic_url`) VALUES (4, 'Colossus at Rhodes', 'The Colossus of Rhodes was a statue of the Greek titan-god of the sun Helios, erected in the city of Rhodes, on the Greek island of the same name, by Chares of Lindos in 280 BC.', 292, 'BC', 28.2258, 36.4511, 'https://en.wikipedia.org/wiki/Colossus_of_Rhodes', 'data:image/jpeg;base64,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');
INSERT INTO `wonder` (`id`, `name`, `description`, `construction_date`, `era`, `latitude`, `longitude`, `wiki_url`, `pic_url`) VALUES (5, 'Lighthouse of Alexandria', 'The Lighthouse of Alexandria, sometimes called the Pharos of Alexandria, was a lighthouse built by the Ptolemaic Kingdom between 280 and 247 BC which has been estimated to be 100 metres in overall height.', 280, 'BC', 29.9187, 31.2001, 'https://en.wikipedia.org/wiki/Lighthouse_of_Alexandria', 'https://upload.wikimedia.org/wikipedia/commons/2/22/Lighthouse_-_Thiersch.png');
INSERT INTO `wonder` (`id`, `name`, `description`, `construction_date`, `era`, `latitude`, `longitude`, `wiki_url`, `pic_url`) VALUES (6, 'Temple of Artemis', 'The Temple of Artemis or Artemision, also known less precisely as the Temple of Diana, was a Greek temple dedicated to an ancient, local form of the goddess Artemis. It was located in Ephesus.', 550, 'BC', 27.3640, 37.9497, 'https://en.wikipedia.org/wiki/Temple_of_Artemis', 'https://upload.wikimedia.org/wikipedia/commons/1/1d/Miniaturk_009.jpg');
INSERT INTO `wonder` (`id`, `name`, `description`, `construction_date`, `era`, `latitude`, `longitude`, `wiki_url`, `pic_url`) VALUES (7, 'Statue of Zeus', 'The Statue of Zeus at Olympia was a giant seated figure, about 13 m (43 ft) tall, made by the Greek sculptor Phidias around 435 BC at the sanctuary of Olympia, Greece, and erected in the Temple of Zeus there.', 435, 'BC', 21.6299, 37.6385, 'https://en.wikipedia.org/wiki/Statue_of_Zeus_at_Olympia', NULL);

COMMIT;

