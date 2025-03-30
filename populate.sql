create table restaurants_grocerystore (
    stor_id numeric(9) not null primary key, 
    stor_name varchar(50) not null,        
    stor_pnum varchar(15),                
    stor_address varchar(100) not null     
);

create table farmer (
    far_id numeric(9) not null primary key,
    far_address varchar(100) not null,    
    far_fname varchar(30) not null,       
    far_lname varchar(30) not null,       
    far_pnum varchar(15) not null,        
    far_type varchar(30) not null         
);

create table governments (
    agency_id numeric(9) not null primary key, 
    don_type varchar(30) not null,           
    gcont_info varchar(50) not null          
);

create table food_banks (
    fb_id numeric(9) not null primary key,
    fb_address varchar(100) not null,
    fb_name varchar(50) not null,
    fb_cont_info varchar(50) not null
);

create table donor (
    don_id numeric(9) not null primary key,
    don_pnum varchar(15),
    don_lname varchar(30) not null,
    don_fname varchar(30) not null,
    don_address varchar(100)
);

create table food_items (
    food_id numeric(9) not null primary key,
    food_type varchar(30) not null,  
    food_name varchar(50) not null,
    expir_date date not null
);

create table inventories (
    inv_id numeric(9) not null primary key,
    food_id numeric(9) not null,
    date_added date not null,
    quantity int not null,
);

create table peoples (
    rec_id numeric(12) not null primary key,
    rec_fname varchar(30) not null,
    rec_lname varchar(30) not null,
    rec_address varchar(100) not null,
    rec_pnum varchar(15)
);

insert into restaurants_grocerystore values('01','Sobeys1','9020000001','101 Main Street');
insert into restaurants_grocerystore values('02','Sobeys2','9020000002','102 Main Street');
insert into restaurants_grocerystore values('03','Sobeys3','9020000003','103 Main Street');
insert into restaurants_grocerystore values('04','Sobeys4','9020000004','104 Main Street');
insert into restaurants_grocerystore values('05','Sobeys5','9020000005','105 Main Street');
insert into restaurants_grocerystore values('06','Sobeys6','9020000006','106 Main Street');
insert into restaurants_grocerystore values('07','Sobeys7','9020000007','107 Main Street');
insert into restaurants_grocerystore values('08','Sobeys8','9020000008','108 Main Street');
insert into restaurants_grocerystore values('09','Sobeys9','9020000009','109 Main Street');

insert into farmer values('001','101 Hawthorne Street','Josh','Allen','4160000001','Grain');
insert into farmer values('002','102 Hawthorne Street','Keon','Coleman','4160000002','Meat');
insert into farmer values('003','103 Hawthorne Street','Dalton','Kincaid','4160000003','Vegetable');
insert into farmer values('004','104 Hawthorne Street','Dion','Dawnkins','4160000004','Dairy');
insert into farmer values('005','105 Hawthorne Street','Ty','Johnson','4160000005','Meat');
insert into farmer values('006','106 Hawthorne Street','Amari','Cooper','4160000006','Dairy');
insert into farmer values('007','107 Hawthorne Street','AJ','Epenesa','4160000007','Fruit');
insert into farmer values('008','108 Hawthorne Street','Ed','Oliver','4160000008','Desert');
insert into farmer values('009','109 Hawthorne Street','Damar','Hamlin','4160000009','Vegetable');

insert into governments values('0001','Money','4160000001');
insert into governments values('0002','Food','4160000002');
insert into governments values('0003','Money','4160000003');
insert into governments values('0004','Food','4160000004');
insert into governments values('0005','Money','4160000005');
insert into governments values('0006','Food','4160000006');
insert into governments values('0007','Money','4160000007');
insert into governments values('0008','Money','4160000008');
insert into governments values('0009','Money','4160000009');

insert into food_banks values('00001','101 Highland Drive','Kevins Corner','x2021aaa@stfx.ca');
insert into food_banks values('00002','102 Highland Drive','Paxtons Corner','x2021bbb@stfx.ca');
insert into food_banks values('00003','103 Highland Drive','Ethans Corner','x2021ccc@stfx.ca');
insert into food_banks values('00004','104 Highland Drive','Lucas Corner','x2021ddd@stfx.ca');
insert into food_banks values('00005','105 Highland Drive','Jacks Corner','x2021eee@stfx.ca');
insert into food_banks values('00006','106 Highland Drive','Emilys Corner','x2021fff@stfx.ca');
insert into food_banks values('00007','107 Highland Drive','Evans Corner','x2021ggg@stfx.ca');
insert into food_banks values('00008','108 Highland Drive','Matties Corner','x2021hhh@stfx.ca');
insert into food_banks values('00009','109 Highland Drive','Thomas Corner','x2021lll@stfx.ca');

insert into donor values('000001','9050000001','Matthews','Auston','101 Highland Drive');
insert into donor values('000002','9050000002','Reilly','Morgan','102 Highland Drive');
insert into donor values('000003','9050000003','Knies','Matthew','103 Highland Drive');
insert into donor values('000004','9050000004','Marner','Mitch','104 Highland Drive');
insert into donor values('000005','9050000005','Stolarz','Anthony','105 Highland Drive');
insert into donor values('000006','9050000006','Tavares','Johnathan','106 Highland Drive');
insert into donor values('000007','9050000007','Domi','Max','107 Highland Drive');
insert into donor values('000008','9050000008','Robertson','Nick','108 Highland Drive');
insert into donor values('000009','9050000009','Tanev','Chris','109 Highland Drive');

insert into food_items values('0000001','Grain','Oatmeal','2025/01/14');
insert into food_items values('0000002','Meat','Steak','2025/01/14');
insert into food_items values('0000003','Vegetable','Celery','2025/01/14');
insert into food_items values('0000004','Desert','Ice cream','2025/01/14');
insert into food_items values('0000005','Meat','Chicken','2025/01/14');
insert into food_items values('0000006','Dairy','Milk','2025/01/14');
insert into food_items values('0000007','Fruit','Bananas','2025/01/14');
insert into food_items values('0000008','Grain','Bread','2025/01/14');
insert into food_items values('0000009','Meat','Salmon','2025/01/14');

insert into inventories values('00000001','00001','2025/03/13','2');
insert into inventories values('00000002','00002','2025/03/14','7');
insert into inventories values('00000003','00003','2025/03/15','5');
insert into inventories values('00000004','00004','2025/03/16','2');
insert into inventories values('00000005','00005','2025/03/17','9');
insert into inventories values('00000006','00006','2025/03/18','1');
insert into inventories values('00000007','00007','2025/03/19','10');
insert into inventories values('00000008','00008','2025/03/20','5');
insert into inventories values('00000009','00009','2025/03/20','3');

insert into peoples values('000000001','Jim','Carrey','101 Hollywood Blvd','4160000001');
insert into peoples values('000000002','Mike','Meyers','102 Hollywood Blvd','4160000002');
insert into peoples values('000000003','Justin','Bieber','103 Hollywood Blvd','4160000003');
insert into peoples values('000000004','Ryan','Gosling','104 Hollywood Blvd','4160000004');
insert into peoples values('000000005','Ryan','Reynolds','105 Hollywood Blvd','4160000005');
insert into peoples values('000000006','Celine','Dion','106 Hollywood Blvd','4160000006');
insert into peoples values('000000007','Avril','Lavigne','107 Hollywood Blvd','4160000007');
insert into peoples values('000000008','Eugene','Levy','108 Hollywood Blvd','4160000008');
insert into peoples values('000000009','Shania','Twain','109 Hollywood Drive','4160000009');
