create table Ed_izmer
(
	id_ed_izmer int primary key,
	name_ed_izmer varchar(100)
);

insert into Ed_izmer values ('shtuki');
insert into Ed_izmer values ('kilogramms');
insert into Ed_izmer values ('litry');

create table Buyer 
(
	id_buyer int primary key,
	buyer_name varchar(100),
	date_born date,
	phone int,
	email varchar(100)
);

insert into Buyer values ('Ivan', '1999.02.11', 842354, 'Ivan@mail.ru');
insert into Buyer values ('Stas', '2003.03.21', 785614, 'Stas@mail.ru');
insert into Buyer values ('Vlad', '2002.11.25', 953621, 'Vlad@mail.ru');
insert into Buyer values ('Nikita', '2000.12.23', 852324, 'Nikita@mail.ru');
insert into Buyer values ('Stepa', '2004.04.06', 951834, 'Stepa@mail.ru');
insert into Buyer values ('Oleg', '1998.08.07', 784535, 'Oleg@mail.ru');

create table Products
(
	id_product int primary key,
	product_name varchar(100),
	id_ed_izmer int,
	amount int,
	foreign key (id_ed_izmer) references Ed_izmer(id_ed_izmer)
);

insert into Products values ('apple', 2, 100);
insert into Products values ('bread', 1, 100);
insert into Products values ('juce', 3, 100);

create table Orders 
(
	id_order int primary key,
	id_product int,
	id_buyer int,
	amount int, 
	date_out date,
	date_in date,
	foreign key (id_product) references Products(id_product),
	foreign key (id_buyer) references Buyer(id_buyer)
);

insert into Orders values (0, 1, 10, '2021.10.27', '29.10.2021');
insert into Orders values (1, 1, 2, '2021.10.27', '29.10.2021');
insert into Orders values (2, 1, 5, '2021.10.10', '29.10.2021');