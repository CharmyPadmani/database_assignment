create table "Customerex-1"(
"cust_id" int PRIMARY KEY NOT NULL,
"cust_name" varchar(255) DEFAULT NULL,
"cust_city" varchar(255) DEFAULT NULL,
"cut_RoomNo" int NOT NULL,
"checkIn_Time" TIMESTAMP
);

select * from "Customerex-1";

INSERT INTO "Customerex-1"("cust_id", "cust_name", "cust_city","cut_RoomNo", "checkIn_Time")VALUES 
(1, "Charmy", "Lake Hiawatha", 201, "08/10/2021 13:25:55.00"),
(2, "Krunal", "Lake Hiawatha", 301, "04/11/2020 3:20:50.00"),
(3, "Renish", "Edision", 211, "05/5/2021 17:25:35.00"),
(4, "Jon", "Newark", 511, "12/11/20201 01:55:00.00"),
(5, "Lady", "Pisckatway", 712, "25/02/2021 21:25:30.00");

select * from "Customerex-1";