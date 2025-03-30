-- Query 1
-- I had to connect food bank ID with inventory ID before joining tables
alter table inventories add fb_id numeric(9);
update inventories set fb_id = '00001' where inv_id = '00000001';
update inventories set fb_id = '00002' where inv_id = '00000002';
update inventories set fb_id = '00003' where inv_id = '00000003';
update inventories set fb_id = '00004' where inv_id = '00000004';
update inventories set fb_id = '00005' where inv_id = '00000005';
update inventories set fb_id = '00006' where inv_id = '00000006';
update inventories set fb_id = '00007' where inv_id = '00000007';
update inventories set fb_id = '00008' where inv_id = '00000008';
update inventories set fb_id = '00009' where inv_id = '00000009'
-- joined food banks and inventories & inventories and food items
select 
    food_banks.fb_name,
    food_items.food_name,
    inventories.quantity,
    food_items.expir_date
from food_banks
join inventories on food_banks.fb_id = inventories.fb_id
join food_items on inventories.food_id = food_items.food_id;

-- Query 2 - joined tables donor address (the food bank they donated to) and food bank address
select 
    donor.don_id, 
    donor.don_fname, 
    donor.don_lname, 
    donor.don_address, 
    food_banks.fb_id, 
    food_banks.fb_name
from donor
JOIN food_banks on donor.don_address = food_banks.fb_address;

-- Query 3 - joined tables farm type and food type
select 
    farmer.far_id, 
    farmer.far_fname, 
    farmer.far_lname, 
    farmer.far_type, 
    food_items.food_id, 
    food_items.food_name, 
    food_items.food_type
from farmer
join food_items on farmer.far_type = food_items.food_type;

-- Query 4 - derived calculation by calculating shelf life by subtracting expiration date from date added
select
	food_items.food_id,
	food_items.food_name,
	food_items.expir_date,
	inventories.date_added,
	datediff(day, food_items.expir_date, inventories.date_added) as ShelfLifeDays
from inventories
join food_items on inventories.food_id=food_items.food_id;

-- Query 5 - aggregation through the sum function
select
	food_items.food_type,
	sum(inventories.quantity) as Quantity
from inventories
join food_items on inventories.food_id=food_items.food_id
group by food_items.food_type