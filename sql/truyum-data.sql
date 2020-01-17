-- Include table data insertion, updation, deletion and select scripts


-- --------------------------------------------------------------
-- Ading Menu Items in MenuItem Table
-- -----------------------------------------------------------------
insert into menu_item
values
(1,'Sandwitch',99.0,'Yes','2017-03-15','Main Course','Yes'),
(2,'Burger',129.0,'Yes','2017-12-23','Main Course','No'),
(3,'Pizza',149.0,'Yes','2018-08-21','Main Course','No'),
(4,'French Fries',57.0,'No','2017-07-02','Starters','Yes'),
(5,'Chocolate Brownie',32.0,'Yes','2022-11-02','Dessert','Yes');


-- ---------------------------------------------------------
-- Displaying Menu Items 
-- -----------------------------------------------------------------

select * from menu_item;

-- ---------------------------------------------------------
-- Updating Menu Items in MenuItem Table
-- -----------------------------------------------------------------

update menu_item 
set me_name='Birayani',me_price=50.0
where me_id=1;


-- ---------------------------------------------------------
-- Displaying updated Menu Items in MenuItem Table
-- -----------------------------------------------------------------

select * from menu_item;

-- ---------------------------------------------------------
-- Displaying customer List
-- -----------------------------------------------------------------

select me_name,me_free_delivery,me_price,me_category 
from menu_item
where me_active='Yes' 
and me_date_of_launch <= current_date();

-- ---------------------------------------------------------
-- Seting User Id and User Name --------
-- -----------------------------------------------------------------
insert into user values(1,'Namita'),
(2,'Hradini');

select * from user;

-- ---------------------------------------------------------
-- Add to Cart 
-- -----------------------------------------------------------------
insert into cart (ct_us_id,ct_pr_id) values(2,1),(2,2);


-- ---------------------------------------------------------
-- Show Cart
-- -----------------------------------------------------------------
select * from cart;

- ---------------------------------------------------------
-- View Cart 
-- -----------------------------------------------------------------
select me_name,me_free_delivery, me_price
from menu_item
inner join cart 
on ct_pr_id=me_id
where ct_us_id=2; 



-- ---------------------------------------------------------
-- Remove from cart 
-- -----------------------------------------------------------------

delete from cart where ct_us_id=2 and ct_pr_id=5 limit 1; 

-- ---------------------------------------------------------
-- View Remove Cart
-- -----------------------------------------------------------------

select me_name,me_free_delivery, me_price 
from menu_item
inner join cart 
on ct_pr_id=me_id
where ct_us_id=2; 

------------------------------------------------------------------- 
-- Show Total
------------------------------------------------------------------
select sum(me_price) 
as Total
from menu_item
inner join cart 
on ct_pr_id=me_id
where ct_us_id=2; 

 
 
 
 
 
 
 
