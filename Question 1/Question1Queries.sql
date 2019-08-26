/* Query A */
select client_name, client_city
from `clients`;

/* Query B */
select product_name
from `product`;

/* Query C */
select client_name
from `clients`
where substring(client_name, 2, 1) = 'a';

/* Query D */
select client_name
from `clients`
where client_city = 'Tezpur';

/* Query E */
select product_name
from `product`
where product_manufacture_price > 2000 and product_manufacture_price < 5000;


alter table `product`
drop column `new_price`;
/* Query F */
alter table `product`
add column `new_price` decimal;

/* Query G */
alter table `sales`
change `sales_new_product_rate` `sales_new_product_rate` decimal;

/* Query H */
select *
from `product`
order by `product_description`;

/* Query I */
select sale_order_date, sales_quantity, sale_ID
from sales;

/* Query J */
delete from `sales`
where sale_order_date < 20080825;

/* Query K */
update `sales`
set `sale_order_date` = 20080816
where sale_ID = 8;

/* Query L */
update `clients`
set client_balance = 1200
where client_id = 3;

/* Query M */
select product_name
from `product`
where  product_description like '%HDD1034%' and product_description like '%DVDRW%';

/* Query N */
select client_name, client_city, client_state
from clients
where not client_city = 'ASSAM';

