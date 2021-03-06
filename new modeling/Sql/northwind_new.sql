-- MySQL Script generated by MySQL Workbench
-- sáb 01 ago 2020 19:45:01
-- Model: Northwind    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema northwind_new
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `northwind_new` ;

-- -----------------------------------------------------
-- Schema northwind_new
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `northwind_new` ;
USE `northwind_new` ;

-- -----------------------------------------------------
-- Table `northwind_new`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `northwind_new`.`customers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `company` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `email_address` VARCHAR(50) NULL DEFAULT NULL,
  `job_title` VARCHAR(50) NULL DEFAULT NULL,
  `business_phone` VARCHAR(25) NULL DEFAULT NULL,
  `home_phone` VARCHAR(25) NULL DEFAULT NULL,
  `mobile_phone` VARCHAR(25) NULL DEFAULT NULL,
  `fax_number` VARCHAR(25) NULL DEFAULT NULL,
  `address` LONGTEXT NULL DEFAULT NULL,
  `city` VARCHAR(50) NULL DEFAULT NULL,
  `state_province` VARCHAR(50) NULL DEFAULT NULL,
  `zip_postal_code` VARCHAR(15) NULL DEFAULT NULL,
  `country_region` VARCHAR(50) NULL DEFAULT NULL,
  `web_page` LONGTEXT NULL DEFAULT NULL,
  `notes` LONGTEXT NULL DEFAULT NULL,
  `attachments` LONGBLOB NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `city` (`city` ASC) VISIBLE,
  INDEX `company` (`company` ASC) VISIBLE,
  INDEX `first_name` (`first_name` ASC) VISIBLE,
  INDEX `last_name` (`last_name` ASC) VISIBLE,
  INDEX `zip_postal_code` (`zip_postal_code` ASC) VISIBLE,
  INDEX `state_province` (`state_province` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 30
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `northwind_new`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `northwind_new`.`employees` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `company` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `email_address` VARCHAR(50) NULL DEFAULT NULL,
  `job_title` VARCHAR(50) NULL DEFAULT NULL,
  `business_phone` VARCHAR(25) NULL DEFAULT NULL,
  `home_phone` VARCHAR(25) NULL DEFAULT NULL,
  `mobile_phone` VARCHAR(25) NULL DEFAULT NULL,
  `fax_number` VARCHAR(25) NULL DEFAULT NULL,
  `address` LONGTEXT NULL DEFAULT NULL,
  `city` VARCHAR(50) NULL DEFAULT NULL,
  `state_province` VARCHAR(50) NULL DEFAULT NULL,
  `zip_postal_code` VARCHAR(15) NULL DEFAULT NULL,
  `country_region` VARCHAR(50) NULL DEFAULT NULL,
  `web_page` LONGTEXT NULL DEFAULT NULL,
  `notes` LONGTEXT NULL DEFAULT NULL,
  `attachments` LONGBLOB NULL DEFAULT NULL,
  `privilege_name` VARCHAR(50) NULL,
  PRIMARY KEY (`id`),
  INDEX `city` (`city` ASC) VISIBLE,
  INDEX `company` (`company` ASC) VISIBLE,
  INDEX `first_name` (`first_name` ASC) VISIBLE,
  INDEX `last_name` (`last_name` ASC) VISIBLE,
  INDEX `zip_postal_code` (`zip_postal_code` ASC) VISIBLE,
  INDEX `state_province` (`state_province` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `northwind_new`.`shippers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `northwind_new`.`shippers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `company` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `email_address` VARCHAR(50) NULL DEFAULT NULL,
  `job_title` VARCHAR(50) NULL DEFAULT NULL,
  `business_phone` VARCHAR(25) NULL DEFAULT NULL,
  `home_phone` VARCHAR(25) NULL DEFAULT NULL,
  `mobile_phone` VARCHAR(25) NULL DEFAULT NULL,
  `fax_number` VARCHAR(25) NULL DEFAULT NULL,
  `address` LONGTEXT NULL DEFAULT NULL,
  `city` VARCHAR(50) NULL DEFAULT NULL,
  `state_province` VARCHAR(50) NULL DEFAULT NULL,
  `zip_postal_code` VARCHAR(15) NULL DEFAULT NULL,
  `country_region` VARCHAR(50) NULL DEFAULT NULL,
  `web_page` LONGTEXT NULL DEFAULT NULL,
  `notes` LONGTEXT NULL DEFAULT NULL,
  `attachments` LONGBLOB NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `city` (`city` ASC) VISIBLE,
  INDEX `company` (`company` ASC) VISIBLE,
  INDEX `first_name` (`first_name` ASC) VISIBLE,
  INDEX `last_name` (`last_name` ASC) VISIBLE,
  INDEX `zip_postal_code` (`zip_postal_code` ASC) VISIBLE,
  INDEX `state_province` (`state_province` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `northwind_new`.`date_dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `northwind_new`.`date_dimension` (
  `date_key` INT(8) UNSIGNED NOT NULL COMMENT '\n',
  `date` DATE NULL,
  `day_of_week` SMALLINT(1) UNSIGNED NULL,
  `day_of_month` SMALLINT(2) UNSIGNED NULL,
  `day_name` VARCHAR(9) NULL,
  `month` SMALLINT(2) UNSIGNED NULL,
  `month_name` VARCHAR(9) NULL,
  `quarter` SMALLINT(1) UNSIGNED NULL,
  `year` SMALLINT(4) UNSIGNED NULL,
  PRIMARY KEY (`date_key`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `northwind_new`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `northwind_new`.`orders` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `employee_id` INT(11) NULL DEFAULT NULL,
  `customer_id` INT(11) NULL DEFAULT NULL,
  `order_date` INT(8) UNSIGNED NULL,
  `shipped_date` INT(8) UNSIGNED NULL,
  `shipper_id` INT(11) NULL DEFAULT NULL,
  `ship_name` VARCHAR(50) NULL DEFAULT NULL,
  `ship_address` LONGTEXT NULL DEFAULT NULL,
  `ship_city` VARCHAR(50) NULL DEFAULT NULL,
  `ship_state_province` VARCHAR(50) NULL DEFAULT NULL,
  `ship_zip_postal_code` VARCHAR(50) NULL DEFAULT NULL,
  `ship_country_region` VARCHAR(50) NULL DEFAULT NULL,
  `shipping_fee` DECIMAL(19,4) NULL DEFAULT '0.0000',
  `taxes` DECIMAL(19,4) NULL DEFAULT '0.0000',
  `payment_type` VARCHAR(50) NULL DEFAULT NULL,
  `paid_date` INT(8) UNSIGNED NULL,
  `notes` LONGTEXT NULL DEFAULT NULL,
  `tax_rate` DOUBLE NULL DEFAULT '0',
  `tax_status_name` VARCHAR(50) NULL DEFAULT NULL,
  `status_name` VARCHAR(50) NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX `customer_id` (`customer_id` ASC) VISIBLE,
  INDEX `customer_id_2` (`customer_id` ASC) VISIBLE,
  INDEX `employee_id` (`employee_id` ASC) VISIBLE,
  INDEX `employee_id_2` (`employee_id` ASC) VISIBLE,
  INDEX `id` (`id` ASC) VISIBLE,
  INDEX `id_2` (`id` ASC) VISIBLE,
  INDEX `shipper_id` (`shipper_id` ASC) VISIBLE,
  INDEX `shipper_id_2` (`shipper_id` ASC) VISIBLE,
  INDEX `id_3` (`id` ASC) VISIBLE,
  INDEX `tax_status` (`tax_status_name` ASC) VISIBLE,
  INDEX `ship_zip_postal_code` (`ship_zip_postal_code` ASC) VISIBLE,
  INDEX `fk_orders_date_dimension1_idx` (`order_date` ASC) VISIBLE,
  INDEX `fk_orders_date_dimension2_idx` (`shipped_date` ASC) VISIBLE,
  INDEX `fk_orders_date_dimension3_idx` (`paid_date` ASC) VISIBLE,
  CONSTRAINT `fk_orders_customers`
    FOREIGN KEY (`customer_id`)
    REFERENCES `northwind_new`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_employees1`
    FOREIGN KEY (`employee_id`)
    REFERENCES `northwind_new`.`employees` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_shippers1`
    FOREIGN KEY (`shipper_id`)
    REFERENCES `northwind_new`.`shippers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_date_dimension1`
    FOREIGN KEY (`order_date`)
    REFERENCES `northwind_new`.`date_dimension` (`date_key`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_date_dimension2`
    FOREIGN KEY (`shipped_date`)
    REFERENCES `northwind_new`.`date_dimension` (`date_key`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_date_dimension3`
    FOREIGN KEY (`paid_date`)
    REFERENCES `northwind_new`.`date_dimension` (`date_key`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 82;


-- -----------------------------------------------------
-- Table `northwind_new`.`order_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `northwind_new`.`order_details` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `order_id` INT(11) NOT NULL,
  `product_id` INT(11) NULL DEFAULT NULL,
  `quantity` DECIMAL(18,4) NOT NULL DEFAULT '0.0000',
  `unit_price` DECIMAL(19,4) NULL DEFAULT '0.0000',
  `discount` DOUBLE NOT NULL DEFAULT '0',
  `status_name` VARCHAR(50) NULL,
  `product_code` VARCHAR(25) NULL,
  `product_name` VARCHAR(50) NULL,
  `standard_cost` DECIMAL(19,4) NULL,
  `list_price` DECIMAL(19,4) NULL,
  `discontinued` TINYINT(1) NULL,
  `category` VARCHAR(50) NULL,
  PRIMARY KEY (`id`),
  INDEX `id` (`id` ASC) VISIBLE,
  INDEX `id_2` (`id` ASC) VISIBLE,
  INDEX `id_3` (`id` ASC) VISIBLE,
  INDEX `id_4` (`id` ASC) VISIBLE,
  INDEX `product_id` (`product_id` ASC) VISIBLE,
  INDEX `product_id_2` (`product_id` ASC) VISIBLE,
  INDEX `id_5` (`id` ASC) VISIBLE,
  INDEX `fk_order_details_orders1_idx` (`order_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_details_orders1`
    FOREIGN KEY (`order_id`)
    REFERENCES `northwind_new`.`orders` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 92
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
