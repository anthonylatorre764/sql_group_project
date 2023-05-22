-- Data Definition Language (create tables inside database)

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150),
    customer_address VARCHAR,
    phone_num VARCHAR(50)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    car_id INTEGER,
    salesperson_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE sales_staff(
    salesperson_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150)
);

CREATE TABLE service_staff(
    service_staff_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150)
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR,
    model VARCHAR,
    car_year INTEGER
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    service_description VARCHAR(150),
    service_date DATE,
    service_cost DECIMAL(10,2),
    service_staff_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY (service_staff_id) REFERENCES service_staff(service_staff_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);

ALTER TABLE invoice
ADD FOREIGN KEY (car_id) REFERENCES car(car_id),
ADD FOREIGN KEY (salesperson_id) REFERENCES sales_staff(salesperson_id);

ALTER TABLE car
RENAME COLUMN year to car_year;