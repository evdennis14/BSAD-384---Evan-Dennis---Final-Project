# BSAD-384 Evan Dennis Final Project
Food insecurity poses a serious threat in todays landscape. More people are accessing foodbanks in Canada than ever before. This overwhelming usage of food banks is stressing the infrastructure in place, hence, an operational, functional and modernized data system is necassary.
## Entity Relational Model
![Screenshot 2025-03-29 at 2 18 23 PM](https://github.com/user-attachments/assets/a15878a0-9b6b-4570-b221-87dfbef073ef)

## Relational Model
![Screenshot 2025-03-29 at 2 20 16 PM](https://github.com/user-attachments/assets/c6820ec7-1c35-4ee4-8c69-550ac5ba23a8)

## Source Code
* https://github.com/evdennis14/BSAD-384---Evan-Dennis---Final-Project/blob/main/creation-script.sql
* https://github.com/evdennis14/BSAD-384---Evan-Dennis---Final-Project/blob/main/populate.sql

## Sample Queries

### Query 1

What food items are at each food bank? How much? When do they expire?

```
  -- First, food bank ID and inventory ID must be joined
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
```

### Query 2

Which food bank did each donor contribute to?

```
select 
  donor.don_id, 
  donor.don_fname, 
  donor.don_lname, 
  donor.don_address, 
  food_banks.fb_id, 
  food_banks.fb_name
from donor
JOIN food_banks on donor.don_address = food_banks.fb_address;
```

### Query 3

Which farmers are associated with which food types?

```
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
```

### Query 4

What is the shelf life of each food item?

```
select
  food_items.food_id,
	food_items.food_name,
	food_items.expir_date,
	inventories.date_added,
	datediff(day, food_items.expir_date, inventories.date_added) as ShelfLifeDays
from inventories
join food_items on inventories.food_id=food_items.food_id;
```

### Query 5

How much food is available for each food type?

```
select
	food_items.food_type,
	sum(inventories.quantity) as Quantity
from inventories
join food_items on inventories.food_id=food_items.food_id
group by food_items.food_type
```
