/* Query A */
select client_id, client_name, client_address, client_age, client_email
from `client`, `account`
where `account`.account_type = "Savings"
and `account`.account_id = `client`.client_account;

/* Query B */
select client_name, client_address
from `client`, `account`, `loan`
where `loan`.loan_amount > 50000
and `loan`.loan_account = `account`.account_id
and `account`.account_id = `client`.client_account;

/* Query C */
update `client`, `account`
set
	client_name = "ABC"
where
	account_id = "TU001"
and
	client_account = account_id;

/* Query D */
select account_id
from `account`, `transaction`
where transaction_account = account_id
having sum(transaction_amount) > 80000;

/* Query E */
select count(account_id)
from `account`
where account_type = "Fixed";

/* Query F */
select distinct client_id, client_name, client_address, client_age, client_email, client_phone_num, account_creation_date
from `account`,`client`
where account_creation_date > 20080120 and account_creation_date < 20080820 and account_id = client_account;

/* Query G */
select *
from `transaction`
where transaction_date = "28-Aug-08";

/* Query H */
select *
from `transaction`
where transaction_date = "29-Aug-08"
order by transaction_type;

/* Query I */
select client_id, client_name, client_address, client_age, client_email, client_phone_num
from `loan`, `client`, `account`
where client_account = account_id
and loan_account = account_id;
