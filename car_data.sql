-- Customer

insert into Customer(customer_id,first_name,last_name)
values(32465, 'Johnny', 'Apple');

insert into Customer(customer_id,first_name,last_name)
values(12255, 'Martha', 'Wayne');

-- Car

insert into Car(car_id,make,model,year,customer_id,staff_id)
values(20, 'Ford', 'Explorer', '2016', 32465, 1);

insert into Car(car_id,make,model,year,customer_id,staff_id)
values(25, 'Toyota', 'Camery', '2019', 12255, 2);

-- Sales

insert into Sales(staff_id,first_name,last_name)
values(1, 'Richard', 'Grayson');

insert into Sales(staff_id,first_name,last_name)
values(2, 'Tim', 'Drake');

-- Servicing
insert into Servicing(mechanic_id,first_name,last_name,car_id)
values(99, 'Bruce', 'Wayne', 32465);

insert into Servicing(mechanic_id,first_name,last_name,car_id)
values(212, 'Clark', 'Kent', 12255);

-- Invoice
insert into Invoice(invoice_id,total_cost,customer_id,staff_id)
values(111, '290000', 32465, 1);

insert into Invoice(invoice_id,total_cost,customer_id,staff_id)
values(222, '1', 12255, 2);

-- Tickets 
insert into Tickets(ticket_id,total_cost,mechanic_id,customer_id,car_id)
values(3, '400', 99, 32465, 20);

insert into Tickets(ticket_id,total_cost,mechanic_id,customer_id,car_id)
values(4, '6000', 212, 12255, 25);