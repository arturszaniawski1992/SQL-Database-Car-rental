
-- Table `wypozyczalnia_samochodow`.`WYPOZYCZALNIE`
CREATE TABLE IF NOT EXISTS `car_rental`.`rental` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `street` VARCHAR(45) NOT NULL,
    `number` VARCHAR(45) NOT NULL,
    `town` VARCHAR(50) NOT NULL,
    `mobile` INTEGER NOT NULL,
    PRIMARY KEY (`id`)
);


-- Table `wypozyczalnia_samochodow`.`STANOWISKO`
CREATE TABLE IF NOT EXISTS `car_rental`.`position_employee` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `position` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);

-- Table `wypozyczalnia_samochodow`.`PRACOWNICY`
CREATE TABLE IF NOT EXISTS `car_rental`.`employee` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `surname` VARCHAR(45) NOT NULL,
    `salary` INTEGER NOT NULL,
    `dateOfBirth` DATE,
    `mobile` INTEGER NOT NULL,
    `rental_id` INTEGER NOT NULL,
    `position_employee` INTEGER NOT NULL,
    PRIMARY KEY (`id`),
    
    CONSTRAINT rental FOREIGN KEY (rental_id)
        REFERENCES rental (id),
	CONSTRAINT position_employee FOREIGN KEY (position_employee)
        REFERENCES position_employee (id)
);
    
-- Table `wypozyczalnia_samochodow`.`ADRES`
CREATE TABLE IF NOT EXISTS `car_rental`.`adress` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `street` VARCHAR(45) NOT NULL,
    `number` INT NOT NULL,
    `town` VARCHAR(45) NOT NULL,
     PRIMARY KEY (`id`)
);
-- Table `wypozyczalnia_samochodow`.`KLINECI`
CREATE TABLE IF NOT EXISTS `car_rental`.`customer` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `surname` VARCHAR(45) NOT NULL,
    `credit_card` VARCHAR(45) NOT NULL,
	`adress` INTEGER NOT NULL,
    `dateOfBirth` DATE,
    `mobile` INTEGER NOT NULL,
    `mail` VARCHAR(45) NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT adress FOREIGN KEY (adress)
        REFERENCES adress (id)
    
);

-- Table `wypozyczalnia_samochodow`.`TYP_SAMOCHODU`
CREATE TABLE IF NOT EXISTS `car_rental`.`type_car` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);


-- Table `wypozyczalnia_samochodow`.`SAMOCHODY`
CREATE TABLE IF NOT EXISTS `car_rental`.`car` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `brand` VARCHAR(45) NOT NULL,
    `model` VARCHAR(45) NOT NULL,
    `engine_power` INTEGER NOT NULL,
	`mileage` INTEGER NOT NULL,
	`capacity` INTEGER NOT NULL,
	`year` INTEGER NOT NULL,
	`color` VARCHAR(45) NULL,
    `type_of_car` INTEGER NOT NULL,
	
    PRIMARY KEY (`id`),
    CONSTRAINT type_car FOREIGN KEY (type_of_car)
        REFERENCES type_car (id)
);

-- Table `wypozyczalnia_samochodow`.`OPIEKUN`
CREATE TABLE IF NOT EXISTS `car_rental`.`keeper` (
	`id` INT NOT NULL AUTO_INCREMENT,
   	`employee_id` INTEGER NOT NULL,
	`car_id` INTEGER NOT NULL,
    PRIMARY KEY (`id`),
	
    CONSTRAINT keeper_employee FOREIGN KEY (employee_id)
        REFERENCES employee (id),
	CONSTRAINT keeper_car FOREIGN KEY (car_id)
        REFERENCES car (id)
    
);

-- Table `wypozyczalnia_samochodow`.`WYPOZYCZENIA`
CREATE TABLE IF NOT EXISTS `car_rental`.`hire` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `date_of_rent` DATE,
    `date_of_return` DATE,
    `price` INTEGER NOT NULL,
    `loan` INTEGER NOT NULL,
	`customer_id` INTEGER NOT NULL,
	`car_id` INTEGER NOT NULL,
    `rental_rent` INTEGER NOT NULL,
	`rental_return` INTEGER NOT NULL,
    PRIMARY KEY (`id`),
    
	CONSTRAINT customer_hire FOREIGN KEY (customer_id)
        REFERENCES customer (id),
	CONSTRAINT car_hire FOREIGN KEY (car_id)
        REFERENCES car (id),
	CONSTRAINT rental_hire_rent FOREIGN KEY (rental_rent)
        REFERENCES rental (id),
	CONSTRAINT rental_hire_return FOREIGN KEY (rental_return)
        REFERENCES rental (id)
    
)
