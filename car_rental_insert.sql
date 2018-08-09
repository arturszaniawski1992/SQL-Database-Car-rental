
-- Insert `RENTAL`
INSERT INTO rental (street, `number`, town, mobile)
VALUES ('Warszawska', 15, 'Bydgoszcz', 58552621);
INSERT INTO rental (street, `number`, town, mobile)
VALUES ('Klodzka', 41, 'Katowice', 785412336);
INSERT INTO rental (street, `number`, town, mobile)
VALUES ('Klorowa', 15, 'Poznan', 785412336);
INSERT INTO rental (street, `number`, town, mobile)
VALUES ('Remontowa', 11, 'Krakow', 789412563);
INSERT INTO rental (street, `number`, town, mobile)
VALUES ('Prosta', 145, 'Lublin', 741221366);


-- Insert `POSITION`
INSERT INTO position_employee (`position`)
VALUES ('seller');
INSERT INTO position_employee (`position`)
VALUES ('accountant');
INSERT INTO position_employee (`position`)
VALUES ('manager');

-- Insert `EMPLOYEE`
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id, position_employee)
	VALUES ('Artur','Szaniawski', 30000, '1945-11-21', 512665332, 3,	3);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Adam','JFoziol', 12000, '1982-11-28', 789552412, 5,	1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id, position_employee)
	VALUES ('Przemek','Kon', 32000, '1995-10-01', 745255211, 3,	2);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Karol','Kowalski', 41000, '1955-02-10', 785441212, 1,3);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Ewa','Nowakowska', 12000, '1978-08-12', 752165233, 1,	1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Marcin','Chajzer', 15000, '1982-02-05', 501221554, 5,	2);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Pawel','Polkowski', 14000, '1992-11-14', 505698521, 3,	1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Wojtek','Dzido', 25000, '1996-12-21', 518522144, 4,	1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Anna','Biernat', 17000, '1982-10-08', 668952232, 2,	1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Katrzyna','Chojnacka', 21000, '1972-01-12', 745221587, 2,	1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Dariusz','Zborowski', 14000, '1995-09-09', 854522656, 2,	1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Pawel','Janusz', 14000, '1975-10-14', 512665668, 2,	3);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Karolina','Kolewska', 15000, '1965-11-21', 512658741, 4,	2);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Ewelina','Masło', 15000, '1992-05-08', 789552124, 2,1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Natalia','Kłoda', 18000, '1987-10-04', 742123221, 4,1);
INSERT INTO employee (`name`, surname, salary, dateOfBirth, mobile, rental_id,position_employee)
	VALUES ('Krzysztof','Biernacki', 14000, '1995-05-11', 514545221, 1,	1);
    
    
    
 -- Insert `ADRESS`
INSERT INTO adress (street, number, town)
	VALUES ('Jezierska', 25,'Warszawa');
INSERT INTO adress (street, number, town)
	VALUES ('Bydgoska', 12,	'Torun');
INSERT INTO adress (street, number, town)
	VALUES ('Lubelska', 412,'Bydgoszcz');
INSERT INTO adress (street, number, town)
	VALUES ('Warminska', 22,'Inowroclaw');
INSERT INTO adress (street, number, town)
	VALUES ('Nasypowa', 96,	'Plock');
INSERT INTO adress (street, number, town)
	VALUES ( 'Prosta', 75,	'Warszawa');
INSERT INTO adress (street, number, town)
	VALUES ('Zakret', 55,	'Warszawa');
INSERT INTO adress (street, number, town)
	VALUES ('Stolowa', 12,	'Plock');
INSERT INTO adress (street, number, town)
	VALUES ( 'Solidarnosci', 82,'Gdansk');
INSERT INTO adress (street, number, town)
	VALUES ('Klimeckiego', 94,	'Gdynia');
INSERT INTO adress (street, number, town)
	VALUES ('Narutowicz', 1,'Sopot');
INSERT INTO adress (street, number, town)
	VALUES ('Kolobrzeska', 58,	'Lukow');

 
        
-- Insert `CUSTOMER`

INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Jan','Nowak','5453765478428880', 1 , '1982-05-08', 789552124, 'jannowak@gmail.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Andrzej','Miller','5401669217902879', 2, '1962-10-08', 455212658, 'andrzej@o2.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Adam','Malysz','5340798530429486', 3, '1945-12-25', 785412544, 'malyszadas@gmail.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Jakub','Blaszczykowski','5590532481039763', 4, '1965-01-06', 514478851, 'kubab@o2.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Jerzy','Killer','5317484737304041', 5, '1980-05-08', 455872586, 'kilerrr123@o2.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Ewelina','Flinta','5163127375579458',6, '1975-12-12', 504123545, 'flinta_ewelina@gmail.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Malgorzata','Kozuchowska','5169878961794927', 7, '1992-10-05', 754452232, 'kozuch@gmail.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Piotr','Adamczyk','5159878961794927', 8, '1958-05-03', 745514475, 'adampio@gmail.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Malgorzata','Socha','4785765478428250',9, '1966-06-12', 785412212, 'jannowak@wp.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Ewa','Minge','5123765478428850', 10, '1985-09-11', 656887414, 'gochasocha@gmail.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Karol','Bedorf','1453765478428890', 11, '1963-05-12', 645214784, 'bedi9099@gmail.com');
INSERT INTO customer (`name`, surname, credit_card, adress, dateOfBirth,mobile,mail)
	VALUES ('Zenon','Laskowik','5453765478422584', 12, '1990-02-08', 447588652, 'laskowikz@wp.pl');


-- Insert `TYPE_CAR``
INSERT INTO type_car (`type`) VALUES ('Hatchback');
INSERT INTO type_car (`type`) VALUES ('Sedan');
INSERT INTO type_car (`type`) VALUES ('MPV');
INSERT INTO type_car (`type`) VALUES ('SUV');
INSERT INTO type_car (`type`) VALUES ('Cabrio');
INSERT INTO type_car (`type`) VALUES ('Combi');

-- Insert `CAR``
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('Audi', 'A4',115, 252001, 2500, 2016, 'black', 1);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('BMW', 'Serie3',215, 167882, 3000, 2018, 'white', 1);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('Skoda', 'Octavia',186, 45000, 1800, 2015, 'red', 2);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('Hyundai', 'Elantra',210, 432290, 3200, 2017, 'black', 3);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('Datsun', 'GO',145, 12300, 2500, 2016, 'yellow', 4);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('Suzuki', 'Maruti',180, 134657, 4000, 2018, 'grey', 4);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('Land Rover', 'Discovery',115, 233878, 4200, 2017, 'black', 5);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('Jeep', 'Grand',115, 134543, 5000, 2015, 'black', 5);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('Audi', 'A6',115, 252001, 123567, 2016, 'white', 6);
INSERT INTO car (brand, model,  engine_power, mileage, capacity,`year`, color,	type_of_car) 
VALUES ('BMW', 'Serie5',115, 345766, 2500, 2017, 'black', 6);


-- Insert `KEEPER``
INSERT INTO keeper (employee_id, car_id) 
VALUES (2,5);
INSERT INTO keeper (employee_id, car_id) 
VALUES (1,4);
INSERT INTO keeper (employee_id, car_id) 
VALUES (15,2);
INSERT INTO keeper (employee_id, car_id) 
VALUES (14,2);
INSERT INTO keeper (employee_id, car_id) 
VALUES (7,8);
INSERT INTO keeper (employee_id, car_id) 
VALUES (3,1);
INSERT INTO keeper (employee_id, car_id) 
VALUES (2,6);
INSERT INTO keeper (employee_id, car_id) 
VALUES (4,9);
INSERT INTO keeper (employee_id, car_id) 
VALUES (3,10);
INSERT INTO keeper (employee_id, car_id) 
VALUES (1,2);
INSERT INTO keeper (employee_id, car_id) 
VALUES (15,5);
INSERT INTO keeper (employee_id, car_id) 
VALUES (8,3);
INSERT INTO keeper (employee_id, car_id) 
VALUES (5,7);
INSERT INTO keeper (employee_id, car_id) 
VALUES (8,7);



-- Insert `HIRE``
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2017-10-05', '2017-10-25',1200, 300, 12, 10, 1 ,4);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-10-15', '2018-10-25',4000, 1000, 11, 9, 1 ,2);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2017-12-10', '2017-12-18',2500, 1500, 9, 8, 3 ,5);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-02-01', '2018-02-15',3600, 800, 10, 1, 4 ,2);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2017-05-05', '2017-05-30',1900, 700, 6, 7, 4 ,2);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-06-24', '2018-07-25',2300, 1000, 7, 5, 2 ,4);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-06-10', '2018-06-18',4500, 500, 8, 2, 4 ,4);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2017-04-14', '2017-04-18',8000, 1900, 8, 9, 2 ,1);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-11-14', '2018-12-18',4500, 2500, 9, 10, 4 ,3);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2017-11-18', '2017-11-17',1600, 300, 1, 5, 5 ,2);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-02-02', '2018-02-15',1200, 500, 2, 3, 3 ,4);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-10-18', '2018-10-18',1200, 900, 3, 2, 2 ,3);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-03-11', '2018-03-14',800, 150, 4, 1, 2 ,1);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-02-02', '2018-02-15',1200, 500, 5, 3, 3 ,4);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-03-18', '2018-03-25',1500, 500, 3, 2, 2 ,3);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-03-11', '2018-03-14',1500, 400, 10, 1, 2 ,1);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-03-26', '2018-03-26',1500, 400, 4, 1, 3 ,1);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-03-16', '2018-03-25',1500, 400, 10, 1, 2 ,1);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-10-18', '2018-10-18',1200, 900, 3, 2, 2 ,3);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-03-11', '2018-03-14',800, 150, 4, 1, 2 ,1);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2017-02-02', '2017-02-15',1200, 500, 5, 3, 3 ,4);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-03-18', '2018-03-25',1500, 500, 8, 2, 2 ,3);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-04-11', '2018-04-14',1300, 200, 10, 1, 2 ,3);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-05-26', '2018-05-30',1500, 400, 3, 1, 3 ,2);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-01-01', '2018-01-02',1500, 400, 2, 3, 2 ,4);
INSERT INTO hire (date_of_rent, date_of_return,  price, loan, customer_id, car_id, rental_rent, rental_return) 
VALUES ('2018-01-05', '2018-01-05',50, 10, 2, 3, 1 ,4);





