#### bach registry load

select * from customers_companies order by customer_id desc;
select * from customers_people order by customer_id desc;
select * from addresses order by address_id desc;
select vat, count(*) as n from customers_companies group by 1 having n > 1;

select * from customers_companies where vat in (08860660961,09298811218,11325140967,11797940969,11851960960,12345678910,12345678911,89334519757);

select business_id, count(*) from customers_companies group by  1;
select * from customers_companies where business_id = 171;

select count(customer_id) as n from customers_people where business_id = 171 and deleted = 0;
select count(customer_id) as n from customers_companies where business_id = 171 and deleted = 0;

select * from customers_companies where business_id = 171;

select * from orders;

#### stripe instant payout

select * from businesses_options_integrations;
select verified_user_id from businesses where business_id = 625;
select distinct verified_user_id from businesses where business_id = 625;
select * from users_businesses where business_id = 631;
select * from users where user_id = 677;

select * from businesses where businesses.business_id = 625;

select distinct stripe_account from businesses where name in ('ZZZZZZZ', 'bar di matteo', 'bar di matteo2', 'test lem');

select * from businesses where stripe_account = 'acct_1M0aGmPx9aBrJByb';

select * from transfers where amount = 5832 order by transfer_id desc;
select * from businesses_invoices order by business_invoice_id desc;
select * from businesses where businesses.business_id = 3;

select businesses.business_id, tier, verified_user_id from businesses order by business_id desc;

### other payments

select * from businesses_options;