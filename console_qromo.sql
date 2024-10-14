#### Query for filters in products

select distinct permission from users_businesses;
select distinct permission from users_businesses;# where business_id = 605;
select * from orders;
# questa è la foreign key di users_business
select * from users;
select distinct business_id from users_businesses where user_id = 2;
select * from users_businesses where business_id = 605 and user_id = 10;