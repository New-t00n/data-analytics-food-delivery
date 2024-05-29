go
use bdfood_delivery

/*Informações valor e data do pedido acompanhado de cliente que o realizou e em qual restaurante*/
select tbcostumer.costumerId AS 'Código do Cliente', 
	   tbrestaurant.nameRestaurant AS 'Nome do Restaurante',
	   order_value AS 'Valor do pedido', 
	   order_date_time AS 'Data do pedido' from tb_order_details
inner join tbcostumer
	on tb_order_details.costumerId = tbcostumer.costumerId
inner join tbrestaurant
	on tb_order_details.restaurantId = tbrestaurant.restaurantId
group by tbcostumer.costumerId, tbrestaurant.nameRestaurant, order_value, order_date_time

select * from tb_order_details

/*Quantidade de pedidos em que houve reembolso*/
select count(refunds_or_chargeback) from tb_order_details
where refunds_or_chargeback > 0

/*Quantidade de pedidos realizados por forma de pagamento*/
select payment_method AS 'Forma de Pagamento', 
		count(payment_method) AS 'Total' from tb_order_details
group by payment_method

/*Pedidos realizados no mês de janeiro*/
select tbcostumer.costumerId AS 'Código do Cliente', 
	   tbrestaurant.nameRestaurant AS 'Nome do Restaurante',
	   order_value AS 'Valor do pedido', 
	   order_date_time AS 'Data do pedido' from tb_order_details
inner join tbcostumer
	on tb_order_details.costumerId = tbcostumer.costumerId
inner join tbrestaurant
	on tb_order_details.restaurantId = tbrestaurant.restaurantId
where order_date_time between '01-01-2024' and '30-01-2024' 
group by tbcostumer.costumerId, tbrestaurant.nameRestaurant, order_value, order_date_time
order by order_date_time asc

/*valor total dos pedidos feitos no mês de fevereiro de 2024*/
select sum(order_value)  AS 'Total dos pedidos' from tb_order_details
where order_date_time between '01-02-2024' and '29-02-2024'


/*quantidade pedidos realizados com desconto de app*/
select count(discount_and_offer) AS 'Descontos pelo app' from tb_order_details
where discount_and_offer like '%app%'

/*soma total de taxas por restaurante*/
select nameRestaurant AS 'Nome do Restaurante',
	   SUM(comission_fee) AS 'Soma taxa do App', 
	   SUM (payment_processing_fee) AS 'Soma taxa da Maquininha', 
	   SUM (delivery_fee) AS 'Soma taxa da entrega' from tb_order_details
inner join tbrestaurant
	on tb_order_details.restaurantId = tbrestaurant.restaurantId
inner join tbdelivery
	on tbdelivery.orderId = tb_order_details.orderId
group by nameRestaurant