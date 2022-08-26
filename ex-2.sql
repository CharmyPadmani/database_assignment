/*Print Distinct City from Table Customers and Print Count
Distinct City from Table Customers.*/

SELECT  DISTINCT "City" AS "Distinct city" FROM Customers;

SELECT COUNT ( DISTINCT "City" ) AS "Count of city" 
FROM Customers; /* 69 */

/*Write a SQL query to get the least number of quantities and
the highest number of quantities bought by the user consider
the OrderDetails Table. */

SELECT MIN("Quantity") from "order_details"; /* 1 */
SELECT MAX("Quantity") from "order_details"; /* 120 */

/* Print the total and an average number of quantities ordered by
users, consider the OrderDetails Table.*/

SELECT sum("Quantity")FROM "order_details"; /*12743*/
SELECT AVG("Quantity")FROM "order_details"; /*24.60038610*/
select * from "order_details";



/*Print name of the product which is present at the 5th position
till the 15th position from Products table, use LIMIT keyword. */

SELECT "ProductName" from "products" LIMIT 11 offset 4;

/* Write a SQL query for all the details of the supplier whose
name consists of “A” at the second position from the Suppliers
table.*/

SELECT * from "suppliers" WHERE POSITION('a' IN "SupplierName")=2;

/* Print the details of the customer who doesn’t stay in the USA
and Canada from the Customers table.*/

SELECT * FROM "customers" WHERE "Country" !='USA'  AND "Country" != 'Canada';

/*Print the details of all the orders which were placed between
the year 2020 to 2021 also print the same in descending order
from the OrderDetails table. */

select "order_details"."OrderDetailID", "order_details"."OrderID", "order_details"."ProductID", "order_details"."Quantity" from "order_details" inner join "orders" on "orders"."OrderID" = "order_details"."OrderID" where ( "orders"."OrderDate" >= '2020-01-01' AND "orders"."OrderDate" <= '2021-12-31');

/*Write a query to show the distinct city and their count from
the Customers table. */

SELECT COUNT ( DISTINCT "City" ) AS "Count of dis. city" FROM Customers; /* 69 */


/* Write a query to fetch details of all employees excluding the
employees with first names, “Sanjay” and “Sonia” from the
Employees table.*/

SELECT * FROM "employees" where "FirstName" = 'Sanjay' OR "FirstName" = 'Sonia';

SELECT * FROM "employees" where "LastName" = 'Sanjay' OR "LastName" = 'Soniya';

/*Duplicate a table as similar to the Suppliers table and name it
as SupplierDetail. */
SELECT * FROM "suppliers";
CREATE TABLE "SupplierDetail" AS SELECT * FROM "suppliers";
SELECT * FROM "SupplierDetail";


/* Delete customer details whose country is Venezuela and print
the rest of the Customer table*/
DELETE FROM "customers" where "Country" = 'Venexuela'; 
SELECT * from "customers";