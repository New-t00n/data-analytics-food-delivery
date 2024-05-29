create database bdfood_delivery

go
use bdfood_delivery

create table tbrestaurant (
	restaurantId varchar(5) primary key,
	nameRestaurant varchar(255)
)

create table tbcostumer(
	costumerId varchar(5) primary key
)

create table tb_order_details(
	orderId int primary key,
	order_date_time datetime,
	order_value float,
	payment_method varchar(50),
	discount_and_offer varchar (100),
	comission_fee float,
	payment_processing_fee float,
	refunds_or_chargeback float,
	costumerId varchar(5) foreign key references tbcostumer(costumerId),
	restaurantId varchar(5) foreign key references tbrestaurant(restaurantId)
)

create table tbdelivery(
	deliveryId int primary key identity(1,1),
	delivery_date_time datetime,
	delivery_fee float,
	orderId int foreign key references tb_order_details(orderId)
)



