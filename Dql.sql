create database customers_db

create table Customers(
	id serial primary key,
	firstname varchar(30) not null,
	lastname varchar(30) not null,
	email varchar(100) unique check(email like '%@gmail.com'),
	total_spend decimal(10,2) check(total_spend>0),
	status varchar(30) default 'active',
	registration_Date date default Current_date
)

INSERT INTO customers (id, firstname, lastname, email, total_spend, status, registration_date) VALUES
(1, 'Elvin', 'Məmmədov', 'elvin.mammadov@gmail.com', 250.50, 'active', '2025-01-15'),
(2, 'Aysel', 'Həsənova', 'aysel.hasanova@gmail.com', 120.00, 'active', '2025-02-03'),
(3, 'Rəşad', 'Əliyev', 'rashad.aliyev@gmail.com', 980.75, 'vip', '2025-03-10'),
(4, 'Leyla', 'Quliyeva', 'leyla.quliyeva@gmail.com', 45.90, 'inactive', '2025-03-22'),
(5, 'Tural', 'İsmayılov', 'tural.ismayilov@gmail.com', 310.00, 'active', '2025-04-05'),
(6, 'Nigar', 'Hüseynova', 'nigar.huseynova@gmail.com', 75.25, 'blocked', '2025-05-18'),
(7, 'Orxan', 'Bağırov', 'orxan.bagirov@gmail.com', 560.40, 'vip', '2025-06-01'),
(8, 'Səbinə', 'Rzayeva', 'sabina.rzayeva@gmail.com', 199.99, 'active', '2025-06-27'),
(9, 'Kamran', 'Nəsirov', 'kamran.nasirov@gmail.com', 15.00, 'inactive', '2025-07-14'),
(10, 'Günel', 'Abbasova', 'gunel.abbasova@gmail.com', 420.30, 'active', '2025-08-09');

--1
select * from customers
select round(total_spend) from customers
select Ceil(total_spend) from customers
select floor(total_spend) from customers

--2
select round(total_spend*1.02,2) from customers

--3
select total_spend%100 from customers

--4
select abs(total_spend-1000) from customers

--5
select round(sqrt(total_spend),2) from customers


--1
select upper(firstname) from customers
select lower(firstname) from customers

--2
select length(firstname) from customers

--3
select trim(concat(firstname , lastname)) from customers



