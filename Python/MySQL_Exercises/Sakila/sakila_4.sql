-- What query would you run to get all the customers in store_id = 1 and inside these cities (1, 42, 312 and 459)? 
-- Your query should return customer first name, last name, email, and address.
-- 
use sakila;
select customer.first_name, customer.last_name, customer.email, address.address
from city, customer, store, address
where customer.store_id = 1 
	and customer.address_id = address.address_id
    and address.city_id = city.city_id
	and customer.store_id = store.store_id
	and (city.city_id = 1 or city.city_id = 42 or city.city_id = 312 or city.city_id = 459);
    
    