CREATE DATABASE IF NOT EXISTS task_two_tables;

CREATE TABLE IF NOT EXISTS task_two_tables.CUSTOMERS
(
    id           int4 auto_increment not null PRIMARY KEY,
    name         varchar(20)         not null,
    surname      varchar(30)         not null,
    age          int4                not null,
    phone_number varchar(20)         not null
);

CREATE TABLE IF NOT EXISTS task_two_tables.ORDERS
(
    id           int4 auto_increment    not null PRIMARY KEY,
    date         date                   not null,
    customer_id  int4                   not null,
    product_name varchar(50)            not null,
    amount       DECIMAL(9, 2) UNSIGNED not null,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);
