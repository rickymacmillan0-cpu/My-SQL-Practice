select prod_name
from Products;
select prod_id,prod_name,prod_price
from Products;
SELECT vend_id
from Products;
select distinct vend_id
from Products;
select distinct vend_id,prod_price 
from Products;
select  vend_id,prod_price 
from Products;
select  prod_name
from Products
limit 5;
select prod_name
from Products 
limit 5 offset 5;
select cust_id
from Customers c ;
select distinct prod_id
from OrderItems oi ;
/*select *
from Customers c ;*/
select cust_id
from Customers c ;
SELECT *
-- SELECT cust_id
FROM Customers;
select prod_name
from Products
order by prod_name;
select prod_id,prod_price,prod_name
from Products
order by prod_price,prod_name;
select prod_id,prod_price,prod_name
from Products
order by prod_price desc;
select prod_id,prod_price,prod_name
from Products p 
order by prod_price desc,prod_name;
SELECT prod_name
FROM Products
WHERE prod_price = 3.49
ORDER BY prod_name ASC;
select cust_name
from Customers c 
order by cust_name desc;
select cust_id,order_num
from Orders o 
order by cust_id,order_date desc;
select quantity,item_price
from OrderItems oi 
order by quantity desc,item_price desc;
select vend_name
from Vendors v 
order by vend_name desc;
select prod_name,prod_price
from Products p 
where prod_price=3.49;
select prod_name,prod_price
from Products p 
where prod_price<=10;
select vend_id,prod_name
from Products p 
where vend_id <> 'DLL01';
select prod_name,prod_price
from Products p 
where prod_price between 5 and 10;
select prod_name
from Products p 
where prod_price is NULL ;
select cust_name
from Customers c 
where cust_email IS NULL;
select prod_id,prod_name
from Products p 
where prod_price=9.49;
select prod_id,prod_name
from Products p 
where prod_price >=9;
select order_num
from OrderItems oi 
where quantity >=100;
select prod_name,prod_price
from Products p 
where prod_price between 3 and 6
order by prod_price;
select prod_id,prod_price,prod_name
from Products p 
where vend_id ='DLL01' and prod_price <=4;
select prod_name,prod_price
from Products p 
where vend_id='DLL01' or vend_id = 'BRS01';
select prod_name,prod_price,vend_id
from Products p 
where (vend_id ='DLL01' or vend_id ='BRS01')
and prod_price >=10;
select prod_name,prod_price
from Products p 
where vend_id in ('DLL01','BRS01')
order by prod_name;
select prod_name,prod_price
from Products p 
where vend_id ='DLL01' or vend_id ='BRS01'
order by prod_name;
select prod_name
from Products p 
where not vend_id ='DLL01'
order by prod_name;
select prod_name
from Products p 
where vend_id <>'DLL01'
order by prod_name;
select vend_name
from Vendors v 
where vend_country='USA' and vend_state='CA';
select order_num,prod_id,quantity
from OrderItems oi 
where quantity >=100 
and prod_id in('BR01','BR02','BR03');
select prod_name,prod_price
from Products p 
where prod_price >=3 and prod_price <= 6
order by prod_price;
select vend_name
from Vendors v 
where vend_country ='USA' and vend_state='CA'
order by vend_name;
select prod_id,prod_name
from Products
where prod_name like 'Fish%';
select prod_id,prod_name
from Products p 
where prod_name like '%bean bag%';
select prod_name
from Products p 
where prod_name like 'F% f';
select prod_id,prod_name
from Products p 
where prod_name like '__ inch teddy bear';
select cust_contact
from Customers c 
where cust_contact like 'J%'
or cust_contact like 'M%'
order by cust_contact;
select cust_contact
from Customers c 
where cust_contact regexp '^[JM]'
order by cust_contact;
select prod_name,prod_desc
from Products p 
where prod_desc like '%toy%';
select prod_name,prod_desc
from Products p 
where not prod_desc like '%toy%'
order by prod_name;
select prod_name,prod_desc
from Products p 
where prod_desc like '%toy%carrots%';
select prod_name,prod_desc
from Products p 
where prod_desc like'%toy%' 
and prod_desc like'%carrots%';
select concat(vend_name,'(',vend_country,')')
from Vendors v 
order by vend_name;
SELECT 
    1 != NULL AS test1, 
    1 <> NULL AS test2, 
    1 IS NOT NULL AS test3;
SELECT * FROM Products WHERE prod_price IS NULL;
SELECT concat(RTRIM(vend_name),'(',RTRIM(vend_country),')')
as vend_title
from Vendors v 
order by v.vend_name ;
select prod_id,
quantity,
item_price,
quantity*item_price as expanded_price
from OrderItems oi 
where order_num =20008;
select vend_id,
vend_name as vname,
vend_city as vcity,
vend_address as vaddress
from Vendors v 
order by vname;
select prod_id,prod_price,
prod_price*0.9 as sale_price
from Products p ;
SELECT vend_name,upper(vend_name) as vnameu
from Vendors v 
order by vend_name;
/*select cust_name,cust_contact
from Customers c 
where SOUNDEX(cust_contact)=SOUNDEX('Micheal Green');--不支持
*/
SELECT cust_name, cust_contact
FROM Customers c 
-- 计算两个字符串的差异程度，数值越小越接近
-- 比如 2 或 3 通常能涵盖大部分拼写错误
WHERE levenshtein_distance(cust_contact, 'Micheal Green') <= 3;
SELECT cust_name, cust_contact
FROM Customers
-- 用 % 代替你不确定的字母
WHERE cust_contact LIKE 'Mich%el% Gr%en%';
select cust_name,cust_email
from Customers c 
where cust_contact like 'M%' 
and cust_email is not null; 
select order_num
from Orders o 
where DATEPART(yy,order_date) = 2020;
