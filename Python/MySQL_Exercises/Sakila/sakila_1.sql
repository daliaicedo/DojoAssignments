use sakila;
select customer.first_name, customer.last_name, customer.email, address.address, city.city_id
from address, customer, city
where city.city_id = 312 and address.address_id = customer.address_id;