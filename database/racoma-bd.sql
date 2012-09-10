SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `racoma-data` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `racoma-data` ;

-- -----------------------------------------------------
-- Table `racoma-data`.`radios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`radios` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`radios` (
  `radio_id` INT NOT NULL AUTO_INCREMENT ,
  `radio_name` VARCHAR(45) NOT NULL ,
  `radio_estation` FLOAT NOT NULL ,
  `radio_path_logo` VARCHAR(45) NULL ,
  `radio_adress` VARCHAR(45) NOT NULL ,
  `radio_telephone` VARCHAR(45) NOT NULL ,
  `radio_facebook` VARCHAR(45) NULL ,
  `radio_twitter` VARCHAR(45) NULL ,
  `radio_email` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`radio_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`users` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT ,
  `user_username` VARCHAR(45) NOT NULL ,
  `user_password` VARCHAR(45) NOT NULL ,
  `user_type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`user_id`) ,
  UNIQUE INDEX `user_username_UNIQUE` (`user_username` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`news`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`news` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`news` (
  `new_id` INT NOT NULL AUTO_INCREMENT ,
  `new_creation_date` TIMESTAMP NOT NULL ,
  `new_content` TEXT NOT NULL ,
  `new_path_image` VARCHAR(45) NULL ,
  `users_user_id` INT NOT NULL ,
  PRIMARY KEY (`new_id`) ,
  INDEX `fk_news_users` (`users_user_id` ASC) ,
  CONSTRAINT `fk_news_users`
    FOREIGN KEY (`users_user_id` )
    REFERENCES `racoma-data`.`users` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`programs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`programs` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`programs` (
  `program_id` INT NOT NULL AUTO_INCREMENT ,
  `program_name` VARCHAR(45) NOT NULL ,
  `program_hour_start` TIME NOT NULL ,
  `program_duration` FLOAT NOT NULL ,
  `program_description` TEXT NULL ,
  `program_path_logo` VARCHAR(45) NULL ,
  `program_calendar` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`program_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`broadcasters`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`broadcasters` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`broadcasters` (
  `broadcaster_id` INT NOT NULL AUTO_INCREMENT ,
  `broadcaster_first_name` VARCHAR(45) NULL ,
  `broadcaster_last_name` VARCHAR(25) NULL ,
  `broadcaster_email` VARCHAR(45) NULL ,
  `broadcaster_bio` TEXT NULL ,
  `broadcaster_facebook` VARCHAR(45) NULL ,
  `broadcaster_twitter` VARCHAR(45) NULL ,
  PRIMARY KEY (`broadcaster_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`broadcasters_programs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`broadcasters_programs` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`broadcasters_programs` (
  `broadcasters_programs_id` INT NOT NULL ,
  `programs_program_id` INT NOT NULL ,
  `broadcasters_broadcaster_id` INT NOT NULL ,
  PRIMARY KEY (`broadcasters_programs_id`) ,
  INDEX `fk_broadcasters_programs_programs1` (`programs_program_id` ASC) ,
  INDEX `fk_broadcasters_programs_broadcasters1` (`broadcasters_broadcaster_id` ASC) ,
  CONSTRAINT `fk_broadcasters_programs_programs1`
    FOREIGN KEY (`programs_program_id` )
    REFERENCES `racoma-data`.`programs` (`program_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_broadcasters_programs_broadcasters1`
    FOREIGN KEY (`broadcasters_broadcaster_id` )
    REFERENCES `racoma-data`.`broadcasters` (`broadcaster_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
