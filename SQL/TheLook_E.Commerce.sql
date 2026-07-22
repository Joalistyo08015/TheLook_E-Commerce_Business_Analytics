create database thelook;
use thelook;
#drop table;

### CREATE TABLE ###
create table distribution_center(
	id varchar (10) not null primary key,
    name varchar (100) not null,
	latitude DECIMAL(11,8) NOT NULL,
    longitude DECIMAL(11,8) NOT NULL
);

create table event(
	id varchar(30) primary key,
    user_id varchar(100) not null,
    sequence_number int not null,
    session_id varchar (100) not null,
    created_at varchar (100) not null,
    ip_address varchar (50) not null,
    city varchar(100),
    state varchar(100) not null,
    postal_code varchar (20) not null,
    browser varchar(50) not null,
    traffic_source varchar(80) not null,
    url varchar (255) not null,
    event_type varchar(40) not null
);

create table inventory_items(
    id INT NOT NULL primary key,
    product_id INT NOT NULL,
    created_at VARCHAR(100) NOT NULL,
    sold_at VARCHAR(100),
    cost DECIMAL(20,8) NOT NULL,
    product_category VARCHAR(100) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    product_brand VARCHAR(100),
    product_retail_price DECIMAL(10,2) NOT NULL,
    product_department VARCHAR(100) NOT NULL,
    product_sku VARCHAR(50) NOT NULL,
    product_distribution_center_id INT NOT NULL
);

create table order_items(
    id int primary key not null,
    order_id int not null,
    user_id int not null,
    product_id int not null,
    inventory_item_id int not null,
    status varchar(50) not null,
    created_at varchar(100) not null,
    shipped_at varchar(100),
    delivered_at varchar(100),
    returned_at varchar(100),
    sale_price decimal(10,2) not null
);

create table orders (
	order_id int primary key not null,
    user_id int not null,
    status varchar (50) not null,
    gender varchar (10) not null,
	created_at varchar(100) not null,
	returned_at varchar(100),
    shipped_at varchar(100),
    delivered_at varchar(100),
    num_of_item int not null
);

create table product (
	id int primary key not null,
    cost decimal(20,8) NOT NULL,
    category varchar (15) not null,
    name  varchar(100) not null,
    brand varchar(10) not null,
    retail_price decimal(20,8) NOT NULL,
    department varchar(100) not null,
    sku varchar(10) not null,
    distribution_center_id varchar(100) not null
);

create table user (
	id int primary key not null,
    first_name varchar (20) not null,
    last_name varchar (20) not null,
    email varchar (50) not null,
    age varchar (5) not null,
    gender varchar (10) not null,
    state varchar (100) not null,
    street_address varchar (100) not null,
    postal_code varchar (10) not null,
    city varchar (100) not null,
    country varchar (100) not null,
    latitude decimal(10,8) not null,
    longitude decimal (10,8) not null,
    traffic_source varchar (50) not null,
    created_at varchar(100) not null
);

### IMPORT DATA ###
SET GLOBAL local_infile = 1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

#distribution_center
load data local infile "C:\\Users\\User\\Desktop\\Project Data Analyst\\TheLook E-Commerce Dataset\\dataset\\thelook_ecommerce.distribution_centers.csv"
into table distribution_center
character set latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    id,
    name,
    latitude,
    longitude
);

#Event
load data local infile "C:\\Users\\User\\Desktop\\Project Data Analyst\\TheLook E-Commerce Dataset\\dataset\\thelook_ecommerce.events.csv"
into table event
character set latin1
fields terminated by ','
optionally enclosed By '"'
lines terminated by'\n'
ignore 1 rows
(
	id,
    user_id,
    sequence_number,
    session_id,
    @created_at,
    ip_address,
    city,
    state,
    postal_code,
    browser,
    traffic_source,
    url,
    event_type
)
set
	created_at = str_to_date(replace(@created_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s');
  
#inventory_items
load data local infile "C:\\Users\\User\\Desktop\\Project Data Analyst\\TheLook E-Commerce Dataset\\dataset\\thelook_ecommerce.inventory_items.csv"
into table inventory_items
character set latin1
fields terminated by ','
optionally enclosed By '"'
lines terminated by'\n'
ignore 1 rows
(
	id,
	product_id,
    @created_at,
    @sold_at,
    cost,
    product_category,
    product_name,
    product_brand,
    product_retail_price,
    product_department,
    product_sku,
    product_distribution_center_id
)
set
	created_at = str_to_date(replace(@created_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s'),
    sold_at = str_to_date(replace(@sold_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s');

#order_items
load data local infile "C:\\Users\\User\\Desktop\\Project Data Analyst\\TheLook E-Commerce Dataset\\dataset\\thelook_ecommerce.order_items.csv"
into table order_items
character set latin1
fields terminated by ','
optionally enclosed By '"'
lines terminated by'\n'
ignore 1 rows
(
	id,
    order_id,
    user_id,
    product_id,
    inventory_item_id,
    status,
    @created_at,
    @shipped_at,
    @delivered_at,
    @returned_at,
    sale_price
)
set
	created_at = str_to_date(replace(@created_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s'),
    shipped_at = str_to_date(replace(@shipped_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s'),
    delivered_at = str_to_date(replace(@delivered_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s'),
    returned_at = str_to_date(replace(@returned_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s');
    
#orders
load data local infile "C:\\Users\\User\\Desktop\\Project Data Analyst\\TheLook E-Commerce Dataset\\dataset\\thelook_ecommerce.orders.csv"
into table orders
character set latin1
fields terminated by ','
optionally enclosed By '"'
lines terminated by'\n'
ignore 1 rows
(
	order_id,
    user_id,
    status,
    gender,
    @created_at,
    @returned_at,
    @shipped_at,
    @delivered_at,
    num_of_item
)
set
	created_at=str_to_date(replace(@created_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s'),
	returned_at = str_to_date(replace(@returned_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s'),
    shipped_at = str_to_date(replace(@shipped_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s'),
    delivered_at = str_to_date(replace(@delivered_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s');

#product
load data local infile "C:\\Users\\User\\Desktop\\Project Data Analyst\\TheLook E-Commerce Dataset\\dataset\\thelook_ecommerce.products.csv"
into table product
character set latin1
fields terminated by ','
optionally enclosed By '"'
lines terminated by'\n'
ignore 1 rows
(
	id,
    cost,
    category,
    name,
    brand,
    retail_price,
    department,
    sku,
    distribution_center_id
);

#user
load data local infile "C:\\Users\\User\\Desktop\\Project Data Analyst\\TheLook E-Commerce Dataset\\dataset\\thelook_ecommerce.users.csv"
into table user
character set latin1
fields terminated by ','
optionally enclosed By '"'
lines terminated by'\n'
ignore 1 rows
(
	id,
    first_name,
    last_name,
    email,
    age,
    gender,
    state,
    street_address,
    postal_code,
    city,
    country,
    latitude,
    longitude,
    traffic_source,
    @created_at
)
set
	created_at=str_to_date(replace(@created_at, ' UTC', ''),
    '%Y-%m-%d %H:%i:%s');

### DATA VALIDATION ###
select count(*) from distribution_center;
select id, count(*) from distribution_center
group by id
having count(*) >1;
desc distribution_center;

select count(*) from event;
select id, count(*) from event
group by id
having count(*) >1;
desc event;

select count(*) from inventory_items;
select id, count(*) from inventory_items
group by id
having count(*) >1;
desc inventory_items;

select count(*) from order_items;
select id, count(*) from order_items
group by id
having count(*) >1;
desc order_items;

select count(*) from orders;
select order_id, count(*) from orders
group by order_id
having count(*) >1;
desc orders;

select count(*) from product;
select id, count(*) from product
group by id
having count(*) >1;
desc product;

select count(*) from user;
select id, count(*) from user
group by id
having count(*) >1;
desc user;

### DATA CLEANING ###
alter table distribution_center
modify column id INT NOT NULL;

alter table event
modify column id bigint not null;

alter table event
modify column user_id varchar (100) null;

update event
set user_id = null
where user_id = '';

select
    count(*) as kosong,
    sum(user_id = '') as string_kosong,
    sum(user_id is null) as null_value
from event;

alter table event
modify column user_id int null;

alter table product
modify column distribution_center_id int not null;

### DATA REVIEW ###
select * from distribution_center;
select * from event;
select * from inventory_items;
select * from order_items;
select * from orders;
select * from product;
select * from user;

### ERD ###
# Product -> Distribution Center
alter table product
add constraint fk_product_distribution_center
foreign key (distribution_center_id)
references distribution_center(id);

#Inventory_Items -> Distribution_Center
alter table inventory_items
add constraint fk_inventory_distribution_center
foreign key (product_distribution_center_id)
references distribution_center(id);

# Inventory_items  -> Product
alter table inventory_items
add constraint fk_inventory_product
foreign key (product_id)
references product(id);

# Orders -> User
alter table orders
add constraint fk_orders_user
foreign key (user_id)
references user(id);

# Event -> User
alter table event
add constraint fk_event_user
foreign key (user_id)
references user(id);

# Order_Items -> Orders
alter table order_items
add constraint fk_order_items_orders
foreign key (order_id)
references orders(order_id);

# Order_Items -> Product
alter table order_items
add constraint fk_order_item_product
foreign key (product_id)
references product(id);

# Order_Items -> Inventory_Items
alter table order_items
add constraint fk_order_items_inventory
foreign key (inventory_item_id)
references inventory_items(id);

#Order_Items -> User
alter table order_items
add constraint fk_order_items_user
foreign key (user_id)
references user(id);

### EXPLORATORY DATA ANALYSIS #
#Dataset Overview (total user, order, produk, event)
select count(*) as total_users from user;
select count(*) as tptal_orders from orders;
select count(*) as total_orders_items from order_items;
select count(*) as total_products from product;
select count(*) as total_inventory from inventory_items;
select count(*) as total_event from event;
select count(*) as total_distribution_center from distribution_center;

#Distribution Overview
select count(*) as total_distribution_center
from distribution_center;

select name 
from distribution_center 
order by name;

#Time Analysis (rentang tanggal data)
select 
	min(created_at) as first_order,
    max(created_at) as last_order 
from orders;

SELECT
	MIN(created_at) as first_created_account_as_user,
	MAX(created_at) as last_cretaeds_account_as_user
FROM user;

select 
	min(created_at) as first_order_event,
    max(created_at) as last_order__event
from event;

#Customer Overview (gender, negara, traffic source)
select gender,
	count(*) as total_user 
from user
group by gender;

select country,
	count(*) as total_user_by_country 
from user
group by country
order by total_user_by_country desc;

select state,
	count(*) as total_user_by_state 
from user
group by state
order by total_user_by_state desc;

select city, 
	count(*) total_user_by_city 
from user
group by city
order by total_user_by_city desc limit 20;

select
	min(cast(age as unsigned)) as min_age,
	max(cast(age as unsigned)) as max_age,
	avg(cast(age as unsigned)) as avg_age
from user;

#Product Overview (kategori, brand, department)
select category, 
	count(*) as total_category 
from product
group by category
order by total_category desc;

select 
	count(distinct brand) as total_brand 
from product;

select brand,
	count(*) as total_brand
from product
group by brand
order by total_brand desc;

select department,
	count(*) as total_department
from product
group by department
order by total_department;

#Pricing Overview (min, max, average harga)
select
	min(retail_price) as min_price,
	max(retail_price) as max_price,
	avg(retail_price) as avg_price
from product;

select
	min(cost),
	max(cost),
	avg(cost)
from product;

#Order Overview (status order, jumlah item)
select status, 
	count(*) as total_status
from orders
group by status
order by total_status desc;

#Event Overview (browser, event type, traffic source)
select browser,
	count(*) as total_event
from event
group by browser
order by total_event desc;

select traffic_source, 
	count(*) as total_event 
from user
group by traffic_source
order by total_event desc;

select event_type,
	count(*) total_event_type
from event
group by event_type
order by total_event_type desc;

### Business Analysis ###
#Sales Analysis
select sum(sale_price) as total_revenue
from order_items;

select
    year(str_to_date(created_at, '%y-%m-%d %h:%i:%s')) as tahun,
    month(str_to_date(created_at, '%y-%m-%d %h:%i:%s')) as bulan,
    sum(sale_price) as total_revenue
from order_items
group by tahun, bulan
order by tahun, bulan;

select p.category, sum(oi.sale_price) as total_revenue_by_category
from order_items oi
join product p
	on oi.product_id = p.id
group by p.category
order by total_revenue_by_category desc;

select p.brand, sum(oi. sale_price) as total_revenue_by_brand
from order_items oi
join product p 
	on oi.product_id=p.id
group by p.brand
order by total_revenue_by_brand desc;
 
select dc.name as distribution_center, sum(oi. sale_price) as total_revenue
from order_items oi
join product p
	on oi.product_id = p.id
join distribution_center dc
	on p.distribution_center_id = dc.id
group by dc.name
order by total_revenue;

#Product Analysis
#Produk paling laris
select p.name as name_product, count(*) as total_terjual
from order_items oi
join product p
	on oi.product_id = p.id
group by p.name 
order by total_terjual desc
limit 10;

#Top 10 brand by revenue
select p.brand as name_of_brand, sum(oi.sale_price) as total_revenue
from order_items oi
join product p
	on oi.product_id = p.id
group by p.brand
order by total_revenue desc
limit 10;

#Top kategori berdasarkan revenue
select p.category as category, sum(oi.sale_price) as total_revenue
from order_items oi
join product p
	on oi.product_id = p.id
group by p.category
order by total_revenue desc
limit 10;

#Produk dengan return tertinggi
select
    p.name as product_name,
    count(*) as total_return
from order_items oi
join product p
    on oi.product_id = p.id
where oi.status = 'returned'
group by p.id, p.name
order by total_return desc
limit 10;

#Customer Analysis
#Jumlah customer yang pernah order
select count(distinct user_id) as total_customer from orders;

#Top customer berdasarkan jumlah order
select 
	u.id, 
    concat(u.first_name, ' ', u.last_name) as customer_name,
    count(o.order_id) as total_order
from orders o
join user u 
	on o.user_id = u.id
group by u.id, customer_name
order by total_order desc
limit 10;

#Top customer berdasarkan spending
select
    u.id,
    concat(u.first_name, ' ', u.last_name) as customer_name,
    sum(oi.sale_price) as total_spending
from order_items oi
join orders o
    on oi.order_id = o.order_id
join user u
    on o.user_id = u.id
group by u.id, customer_name
order by total_spending desc
limit 10;

#Repeat customer
select
    u.id,
    concat(u.first_name, ' ', u.last_name) as customer_name,
    count(o.order_id) as total_order
from orders o
join user u
    on o.user_id = u.id
group by u.id, customer_name
having count(o.order_id) > 1
order by total_order desc;

#Order Analysis
#Total order
select count(*) as total_order
from orders;

#Average item per order
select avg(num_of_item) as avg_item
from orders;

#Status order
select
    status,
    count(*) as total_order
from orders
group by status
order by total_order desc;

#Order per bulan
select
    year(created_at) as tahun,
    month(created_at) as bulan,
    count(*) as total_order
from orders
group by tahun, bulan
order by tahun, bulan;

#Shipping Analysis
#Rata-rata lama pengiriman
select
    avg(datediff(delivered_at, shipped_at)) as avg_shipping_days
from orders
where shipped_at is not null
  and delivered_at is not null;

#Order yang paling lama dikirim
select
    order_id,
    datediff(delivered_at, shipped_at) as shipping_days
from orders
where shipped_at is not null
  and delivered_at is not null
order by shipping_days desc
limit 10;

#Shipping berdasarkan negara
select
    u.country,
    count(o.order_id) as total_order
from orders o
join user u
    on o.user_id = u.id
group by u.country
order by total_order desc;

#Return Analysis
#Return Rate
select
    round(
        sum(case when status = 'returned' then 1 else 0 end)
        * 100.0 /
        count(*),
        2
    ) as return_rate
from order_items;

#Produk paling sering direturn
select
    p.name,
    count(*) as total_return
from order_items oi
join product p
    on oi.product_id = p.id
where oi.status = 'returned'
group by p.id, p.name
order by total_return desc
limit 10;

#User Behavior Analysis
#Browser paling sering digunakan
select
    browser,
    count(*) as total
from event
group by browser
order by total desc;

#Traffic source terbaik
select
    traffic_source,
    count(*) as total_user
from user
group by traffic_source
order by total_user desc;

#Traffic source dengan revenue terbanyak
select
    u.traffic_source,
    sum(oi.sale_price) as total_revenue
from user u
join orders o
    on u.id = o.user_id
join order_items oi
    on o.order_id = oi.order_id
group by u.traffic_source
order by total_revenue desc;

#Event yang paling banyak
select
    event_type,
    count(*) as total_event
from event
group by event_type
order by total_event desc;

#Aktivitas user berdasarkan jam
select
    hour(created_at) as jam,
    count(*) as total_activity
from event
group by jam
order by jam;

#Inventory Analysis
#Produk yang belum terjual
select
    ii.id,
    p.name
from inventory_items ii
left join order_items oi
    on ii.id = oi.inventory_item_id
join product p
    on ii.product_id = p.id
where oi.inventory_item_id is null;

#Inventory per distribution center
select
    dc.name,
    count(ii.id) as total_inventory
from inventory_items ii
join distribution_center dc
    on ii.product_distribution_center_id = dc.id
group by dc.id, dc.name
order by total_inventory desc;

#Cost inventory
select
    sum(cost) as total_inventory_cost
from inventory_items;

# ==========================
# FACT TABLE : FACT_SALES
# ==========================

CREATE OR REPLACE VIEW fact_sales AS
SELECT
    -- ==========================
    -- Primary Key
    -- ==========================
    oi.id AS order_item_id,
    oi.order_id,
    oi.user_id,
    oi.product_id,
    oi.inventory_item_id,

    -- ==========================
    -- Customer
    -- ==========================
    CONCAT(u.first_name, ' ', u.last_name) AS customer_name,
    u.gender,
    u.age,
    u.city,
    u.state,
    u.country,
    u.traffic_source,

    -- ==========================
    -- Product
    -- ==========================
    p.name AS product_name,
    COALESCE(NULLIF(p.brand, ''), 'No Brand') AS brand,
    p.category,
    p.department,
    p.sku,

    -- ==========================
    -- Distribution Center
    -- ==========================
    dc.id AS distribution_center_id,
    dc.name AS distribution_center,

    -- ==========================
    -- Order Information
    -- ==========================
    o.status,

    o.created_at,
    o.shipped_at,
    o.delivered_at,
    o.returned_at,

    -- ==========================
    -- Date Breakdown
    -- ==========================
    YEAR(o.created_at) AS order_year,
    QUARTER(o.created_at) AS order_quarter,
    MONTH(o.created_at) AS order_month,
    MONTHNAME(o.created_at) AS month_name,
    DATE_FORMAT(o.created_at,'%Y-%m') AS order_year_month,
    DAY(o.created_at) AS order_day,

    -- ==========================
    -- Financial
    -- ==========================
    oi.sale_price AS revenue,
    p.cost,
    (oi.sale_price - p.cost) AS profit,

    ROUND(
        ((oi.sale_price - p.cost) / oi.sale_price) * 100,
        2
    ) AS profit_margin,

    -- ==========================
    -- Shipping
    -- ==========================
    CASE
        WHEN o.shipped_at IS NOT NULL
         AND o.delivered_at IS NOT NULL
        THEN DATEDIFF(o.delivered_at, o.shipped_at)
        ELSE NULL
    END AS shipping_days,

    -- ==========================
    -- Return Flag
    -- ==========================
    CASE
        WHEN LOWER(o.status) = 'returned'
        THEN 1
        ELSE 0
    END AS is_return

FROM order_items oi

INNER JOIN orders o
    ON oi.order_id = o.order_id

INNER JOIN product p
    ON oi.product_id = p.id

INNER JOIN user u
    ON oi.user_id = u.id

INNER JOIN inventory_items ii
    ON oi.inventory_item_id = ii.id

INNER JOIN distribution_center dc
    ON ii.product_distribution_center_id = dc.id
;

select*from fact_sales;
desc fact_sales;

#DIM PRODUCT#
CREATE OR REPLACE VIEW dim_product AS
SELECT
    id AS product_id,
    name AS product_name,
    brand,
    category,
    department,
    sku,
    cost,
    retail_price
FROM product;

select*from dim_product;

#DIM USER#
CREATE OR REPLACE VIEW dim_user AS
SELECT
    id AS user_id,
    CONCAT(first_name,' ',last_name) AS customer_name,
    first_name,
    last_name,
    gender,
    age,
    city,
    state,
    country,
    traffic_source
FROM user;

select*from dim_user;

#DIM DISTRIBUTION CENTER#
CREATE OR REPLACE VIEW dim_distribution_center AS
SELECT
    id AS distribution_center_id,
    name AS distribution_center,
    latitude,
    longitude
FROM distribution_center;

select * from dim_distribution_center;
