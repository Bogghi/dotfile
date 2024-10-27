#### Query for filters in products

select distinct permission from users_businesses;
select distinct permission from users_businesses;
select * from orders;
# questa è la foreign key di users_business
select * from users;
select distinct business_id from users_businesses where user_id = 2;
select * from users_businesses where business_id = 605 and user_id = 10;
select * from users where email like 'borghi%';
select * from users_businesses where user_id = 674;
select order_id, type, date from orders where type = 'cash' order by date desc;
select * from users;
select * from orders order by date desc;
select * from orders where order_id in (31074, 31084, 31085);
select * from orders_payments where order_id in (31074, 31084, 31085);

#### Query email

select * from terminals where location_id = 'tml_FveQWgEguGNJpY';
select distinct default_stripe_location_id from businesses_options;
select * from businesses_options where default_stripe_location_id = 'tml_FveQWgEguGNJpY';
select * from payments order by payment_id desc;
select type from orders order by order_id desc;
select plan_id, plan_cycle, plan_plugin_pos, plan_plugin_counter, name from businesses;
select distinct network from transactions;
SELECT * FROM events_stripe WHERE event = 'evt_3QD6dcL1BrR61arW1XrjBKW7';
select company_email from businesses where business_id = 628;
select * from users where user_id in (8, 674);
select * from users_businesses where business_id = 625