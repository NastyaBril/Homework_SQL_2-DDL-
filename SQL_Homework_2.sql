create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
select*from employees;

insert into employees(employee_name)
values ('Nastya'),
	   ('Sveta'),
	   ('Lili'),
	   ('Gleb'),
	   ('Sergey'),
	   ('Galina'),
	   ('Valera'),
	   ('Mira'),
	   ('Olga'),
	   ('Tanya'),
	   ('Toma'),
	   ('Nadya'),
	   ('Alexandr'),
	   ('Artem'),
	   ('Kolya'),
	   ('Alina'),
	   ('Yura'),
	   ('Pavel'),
	   ('Andrei'),
	   ('Kseniya'),
	   ('Alex'),
	   ('Bogdan'),
	   ('Alesya'),
	   ('Artur'),
	   ('Vadim'),
	   ('Veronika'),
	   ('Olesya'),
	   ('Robert'),
	   ('Anya'),
	   ('Yulya'),
	   ('Marina'),
	   ('Valya'),
	   ('Evgeniy'),
	   ('Anatoliy'),
	   ('Vanda'),
	   ('Roman'),
	   ('Dima'),
	   ('Dina'),
	   ('Grisha'),
	   ('Loretta'),
	   ('Katya'),
	   ('Elisey'),
	   ('Karina'),
	   ('Tima'),
	   ('Nata'),
	   ('Sasha'),
	   ('Karolina'),
	   ('Platon'),
	   ('Gosha'),
	   ('Alena'),
	   ('Lena'),
	   ('Mariya'),
	   ('Masha'),
	   ('Svetlana'),
	   ('Alla'),
	   ('Emma'),
	   ('Ilya'),
	   ('Anzhelika'),
	   ('Anton'),
	   ('Artur'),
	   ('Ahmed'),
	   ('Lisa'),
	   ('Valentin'),
	   ('Vasya'),
	   ('Veronika'),
	   ('Vika'),
	   ('Tanya'),
	   ('Vitya'),
	   ('Vlad'),
	   ('Gena');
	  
	  --drop table employees;
	  
	
	   
	   
create table salary(
	id serial primary key,
	monthly_salary int not null
);
select*from salary;

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
select*from salary;

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
select*from employee_salary;

--drop table employee_salary;

insert into employee_salary(employee_id, salary_id)
values (1,3),
	   (2,8),
	   (3,10),
	   (4,14),
	   (5,4),
	   (6,2),
	   (7,10),
	   (8,13),
	   (9,4),
	   (10,1),
	   (11,7),
	   (12,11),
	   (13,5),
	   (14,9),
	   (15,6),
	   (16,2),
	   (17,1),
	   (18,9),
	   (19,13),
	   (20,12),
	   (21,11),
	   (22,1),
	   (23,15),
	   (24,1),
	   (25,3),
	   (26,4),
	   (27,14),
	   (28,3),
	   (29,10),
	   (30,9),
	   (81,1),
	   (82,2),
	   (83,3),
	   (84,4),
	   (85,5),
	   (86,6),
	   (87,7),
	   (88,8),
	   (89,9),
	   (90,10);

create table roles(
	id serial primary key,
	role_name int not null unique
);
select*from roles;


alter table roles
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');

--drop table roles;
	  
create table roles_employee(
	id serial primary key,
	id_employee int not null unique,
	id_role int not null,
	foreign key (id_employee)
		references employees(id),
 foreign key(id_role)
		references roles(id)
);

--drop table roles_employee;

select*from roles_employee;

insert into roles_employee (id_employee, id_role)
values (1,2),
	   (2,9),
	   (3,4),
	   (4,11),
	   (5,10),
	   (6,8),
	   (7,10),
	   (8,6),
	   (9,1),
	   (10,12),
	   (11,13),
	   (12,15),
	   (13,18),
	   (14,20),
	   (15,19),
	   (16,3),
	   (17,6),
	   (18,7),
	   (19,2),
	   (20,5),
	   (21,14),
	   (22,19),
	   (23,20),
	   (24,17),
	   (25,6),
	   (26,13),
	   (27,18),
	   (28,1),
	   (29,3),
	   (30,4),
	   (31,6),
	   (32,9),
	   (33,16),
	   (34,14),
	   (35,19),
	   (36,2),
	   (37,20),
	   (38,16),
	   (39,14),
	   (40,6);



