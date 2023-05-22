-- customer 
INSERT INTO customer(
    full_name,
    customer_address,
    phone_num
) VALUES (
    'John Smith',
    '333 N West Road',
    '243-772-8901'
);

SELECT *
FROM customer;


INSERT INTO customer(
    full_name,
    customer_address,
    phone_num
) VALUES (
    'Bill Brown',
    '123 Crossing Street',
    '228-406-1992'
), (
    'Sally Field',
    '467 Palm Avenue',
    '993-675-8824'
);

INSERT INTO customer(
    full_name,
    customer_address,
    phone_num
) VALUES (
    'Jasper Eden',
    '999 This Way',
    '773-903-7729'
), (
    'Jack Lumber',
    '4738 Casper Ave',
    '229-493-0128'
);

SELECT *
FROM customer;





-- sales_staff
INSERT INTO sales_staff(
    full_name
) VALUES (
    'George Scott'
), (
    'Sandra Preston'
);

SELECT *
FROM sales_staff;




-- service_staff
INSERT INTO service_staff(
    full_name
) VALUES (
    'Peter Johnson'
), (
    'Wes Turn'
), (
    'Violet Winters'
);

SELECT *
FROM service_staff;





-- car
INSERT INTO car(
    make,
    model,
    car_year
) VALUES (
    'Nissan',
    'Altima',
    2015
), (
    'Hyundai',
    'Elantra',
    2020
), (
    'Chevrolet',
    'Camaro',
    1967
);

SELECT *
FROM car;

INSERT INTO car(
    make,
    model,
    car_year
) VALUES (
    'Nissan',
    'Versa',
    2010
), (
    'Hyundai',
    'Santa Fe',
    2020
);





-- service_ticket
INSERT INTO service_ticket(
    service_description,
    service_date,
    service_cost
) VALUES (
    'Oil Change',
    '2023-05-20',
    30.75
), (
    'Steering Wheel Alignment',
    '2023-05-21',
    40.00
), (
    'Tire Rotation',
    '2023-05-21',
    20.15
);

SELECT *
FROM service_ticket;


INSERT INTO service_ticket(
    service_description,
    service_date,
    service_cost
) VALUES (
    'Oil Change',
    '2023-05-22',
    30.75
), (
    'Windshield Replacement',
    '2023-05-22',
    300.00
);

-- mistake
INSERT INTO service_ticket(
    service_staff_id,
    car_id
) VALUES (
    3,
    1
), (
    1,
    2
), (
    2,
    3
), (
    3,
    4
), (
    1,
    5
);

SELECT *
FROM service_ticket;

-- correction
DELETE FROM service_ticket WHERE service_ticket_id = 6;
DELETE FROM service_ticket WHERE service_ticket_id = 7;
DELETE FROM service_ticket WHERE service_ticket_id = 8;
DELETE FROM service_ticket WHERE service_ticket_id = 9;
DELETE FROM service_ticket WHERE service_ticket_id = 10;


UPDATE service_ticket
SET service_staff_id=3, car_id=1
WHERE service_ticket_id=1;

UPDATE service_ticket
SET service_staff_id=1, car_id=2
WHERE service_ticket_id=2;

UPDATE service_ticket
SET service_staff_id=2, car_id=3
WHERE service_ticket_id=3;

UPDATE service_ticket
SET service_staff_id=3, car_id=4
WHERE service_ticket_id=4;


DELETE FROM service_ticket WHERE service_ticket_id = 5;


INSERT INTO service_ticket(
    service_ticket_id,
    service_description,
    service_date,
    service_cost,
    service_staff_id,
    car_id
) VALUES (
    5,
    'Windshield Replacement',
    '2023-05-22',
    300.00,
    1,
    5
);

SELECT *
FROM service_ticket;




-- invoice (foreign keys)
INSERT INTO invoice(
    customer_id,
    car_id,
    salesperson_id
) VALUES (
    1,
    1,
    2
), (
    2,
    2,
    1
), (
    3,
    3,
    1
), (
    4,
    4,
    2
), (
    5,
    5,
    1
);


SELECT *
FROM invoice;
