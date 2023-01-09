CREATE TABLE "Sales" (
  "staff_id" Serial,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("staff_id")
);

CREATE TABLE "Customer" (
  "customer_id" Serial,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Car" (
  "car_id" SERIAL,
  "make" VARCHAR(100),
  "model" VARCHAR(100),
  "year" DATE,
  "customer_id" SERIAL,
  "staff_id" SERIAL,
  PRIMARY KEY ("car_id")
);

CREATE TABLE "Servicing" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "car_id" SERIAL,
  PRIMARY KEY ("mechanic_id"),
  CONSTRAINT "FK_Servicing.mechanic_id"
    FOREIGN KEY ("mechanic_id")
      REFERENCES "Customer"("first_name"),
  CONSTRAINT "FK_Servicing.last_name"
    FOREIGN KEY ("last_name")
      REFERENCES "Car"("staff_id")
);

CREATE TABLE "Invoice" (
  "invoice_id" SERIAL,
  "total_cost" NUMERIC(8,2),
  "customer_id" SERIAL,
  "staff_id" SERIAL,
  PRIMARY KEY ("invoice_id")
);

CREATE TABLE "Tickets" (
  "ticket_id" Serial,
  "total_cost" NUMERIC(8,2),
  "mechanic_id" Serial,
  "customer_id" Serial,
  "car_id" Serial,
  PRIMARY KEY ("ticket_id")
);

