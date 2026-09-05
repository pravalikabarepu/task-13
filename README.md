# Northwind SQL JOIN Analysis

## Project Overview

This project focuses on analyzing relational data using **SQL JOIN operations**. The objective is to build confidence in combining data from multiple related tables and understanding how different JOIN types affect query results.

## Objective

* Understand relational database relationships.
* Practice `INNER JOIN` and `LEFT JOIN`.
* Identify and use appropriate join keys.
* Compare row counts before and after joins.
* Understand how joins can produce duplicate rows.
* Extract meaningful information from related tables.

## Dataset

**Northwind Dataset**

The project uses Northwind-related tables including:

* `categories`
* `category`
* `employee`
* `orders`
* `products`
* `suppliers`

> Note: The table names reflect the tables created in the MySQL database for this project.

## Tools Used
* **MySQL Workbench**
## SQL Concepts Covered

### INNER JOIN

Returns only records where matching values exist in both tables.

Example:

```sql
SELECT
    c.CustomerID,
    c.CompanyName,
    o.OrderID
FROM categories c
INNER JOIN orders o
    ON c.CustomerID = o.CustomerID;
```

### LEFT JOIN

Returns all records from the left table and matching records from the right table. If there is no match, the right-side values are `NULL`.

Example:

```sql
SELECT
    c.CustomerID,
    c.CompanyName,
    o.OrderID
FROM categories c
LEFT JOIN orders o
    ON c.CustomerID = o.CustomerID;
```

## Join Keys

The main relationships explored in this project include:

| Tables               | Join Key     |
| -------------------- | ------------ |
| Customers → Orders   | `CustomerID` |
| Employees → Orders   | `EmployeeID` |
| Products → Category  | `CategoryID` |
| Products → Suppliers | `SupplierID` |

## Queries Performed

A total of **15 SQL queries** were created covering:

1. Customers and Orders – INNER JOIN
2. Customers and Orders – LEFT JOIN
3. Customers without Orders
4. Orders with Customer details
5. Orders with Employee details
6. Employees and Orders – LEFT JOIN
7. Employees without Orders
8. Products and Categories
9. Products and Suppliers
10. Products and Categories – LEFT JOIN
11. Products and Suppliers – LEFT JOIN
12. Customer Order Count
13. Row Count Comparison
14. Customers with Multiple Orders
15. Three-table JOIN using Customers, Orders and Employees

## Key Findings

* `INNER JOIN` returns only matching records.
* `LEFT JOIN` helps identify records that do not have a match.
* One customer can have multiple orders, causing the customer information to appear multiple times after a JOIN.
* Row counts can increase after joining one-to-many relationships.
* Choosing the correct join key is essential for accurate results.

## Conclusion

This project demonstrates practical SQL JOIN skills by combining related Northwind tables, comparing `INNER JOIN` and `LEFT JOIN`, analyzing row counts, and understanding duplicate records created through one-to-many relationships.
