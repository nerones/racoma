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
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `estation` FLOAT NOT NULL ,
  `path_logo` VARCHAR(45) NULL ,
  `adress` VARCHAR(45) NOT NULL ,
  `telephone` VARCHAR(45) NOT NULL ,
  `facebook_url` VARCHAR(45) NULL ,
  `twitter_url` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`users` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `user_username_UNIQUE` (`username` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`news`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`news` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`news` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `creation_date` TIMESTAMP NOT NULL ,
  `content` TEXT NOT NULL ,
  `path_image` VARCHAR(45) NULL ,
  `user_id` INT NOT NULL ,
  `title` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_news_users` (`user_id` ASC) ,
  CONSTRAINT `fk_news_users`
    FOREIGN KEY (`user_id` )
    REFERENCES `racoma-data`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`programs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`programs` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`programs` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `hour_start` TIME NOT NULL ,
  `duration` FLOAT NOT NULL ,
  `description` TEXT NULL ,
  `path_logo` VARCHAR(45) NULL ,
  `calendar` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`broadcasters`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`broadcasters` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`broadcasters` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `first_name` VARCHAR(45) NULL ,
  `last_name` VARCHAR(25) NULL ,
  `email` VARCHAR(45) NULL ,
  `bio` TEXT NULL ,
  `facebook_url` VARCHAR(45) NULL ,
  `twitter_url` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `racoma-data`.`broadcasters_programs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racoma-data`.`broadcasters_programs` ;

CREATE  TABLE IF NOT EXISTS `racoma-data`.`broadcasters_programs` (
  `id` INT NOT NULL ,
  `program_id` INT NOT NULL ,
  `broadcaster_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_broadcasters_programs_programs1` (`program_id` ASC) ,
  INDEX `fk_broadcasters_programs_broadcasters1` (`broadcaster_id` ASC) ,
  CONSTRAINT `fk_broadcasters_programs_programs1`
    FOREIGN KEY (`program_id` )
    REFERENCES `racoma-data`.`programs` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_broadcasters_programs_broadcasters1`
    FOREIGN KEY (`broadcaster_id` )
    REFERENCES `racoma-data`.`broadcasters` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
