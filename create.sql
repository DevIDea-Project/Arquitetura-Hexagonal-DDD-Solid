drop table installment;
drop table transaction;
create table transaction (
	code text primary key,
	amount numeric,
	number_installments integer,
	payment_method text,
	date timestamp default now()
);
create table installment (
	code text references transaction (code),
	number integer,
	amount numeric,
	primary key (code, number)
);
