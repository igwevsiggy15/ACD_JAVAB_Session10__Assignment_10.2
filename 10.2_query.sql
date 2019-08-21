use bank;
insert into customer values('C1','Ankur',838289,'Domlur','Bangalore','1990-09-11');
insert into customer values('C2','John',89849,'Vaishali','Jaipus','1992-10-10');
insert into customer values('C3','Raman',888950,'Marathali','bangalore','1987-08-15');

update customer set city = 'Bangalore' where c_id = 'C2';
delete from customer where c_id = 'C3';

create table account
(
	ACCT_NO	varchar(10) primary key,
    C_ID varchar(10),
    TYPE varchar(10) check (Type = 'savings' or Type = 'Current'),
    Balance	int,
    foreign key (C_ID) references customer (C_ID)
);

insert into account values ('CA1', 'C1', 'Savings', 50000);
insert into account values ('CA2', 'C1', 'Savings', 10000);