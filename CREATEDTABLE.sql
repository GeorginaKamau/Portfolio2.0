--We'll create a Store sales table with 40 rows and 10 columns which we'll use to perform data exploration features on SQL such as;
--automatic column ID's,physically stored calculations, triggers, filling missing values, aggregate functions, Views,add columns&rows, batch processing and views
CREATE TABLE Store_sales(
ID INT PRIMARY KEY IDENTITY(1,1),
Sale_date DATE,
Product_ID INT,
Product_name VARCHAR(150),
Product_category VARCHAR(150),
Product_cost DECIMAL(10, 2) NULL,
Sale_price DECIMAL(10,2),
Marketing_expense DECIMAL(10,2),
Total_expenses DECIMAL(10,2),
Profit DECIMAL(10,2),
Margin AS (Total_expenses+Profit-Product_cost) PERSISTED
);


INSERT INTO store_sales (Sale_date, Product_ID, Product_name, Product_category,Product_cost, Sale_price, Marketing_expense, Total_expenses, Profit)
VALUES 
('2024-06-01', 1010, 'Rosea Paper Towels', 'Toiletries', 10.00, 15.00, 2.00, 12.00, 5.00),
('2024-06-02', 1020, 'Lotsa Cows Milk', 'Milk', 20.00, NULL, 3.00, 18.00, 8.00),
('2024-06-02', 1030, 'Soke Maize Meal', 'Flour', 15.00, 25.00, 4.00, 20.00, 10.00),
('2024-06-04', 1040, 'Eggs', 'Eggs', 12.00, NULL, 2.50, 14.50, 7.00),
('2024-06-04', 1050, 'Edge Self Raising Flour', 'Flour', 18.00, 28.00, 3.50, 21.50,12.00),
('2024-06-04', 1060, 'Vasa Petroleum Jelly', 'Cosmetics', 14.00, 22.00, 2.00, 16.00,8.00),
('2024-06-07', 1070, 'Iso Cows Milk', 'Milk', 16.00, NULL, 3.00, 19.00, 6.00),
('2024-06-07', 1080, 'Hong Baking Flour', 'Flour', 10.00, 20.00, 1.50, 11.50, 10.00),
('2024-06-09', 1090, 'Coco Coconut Milk', 'Milk', 22.00, NULL, 4.00, 20.00, 9.00),
('2024-06-10', 1101, 'Soke Maize Meal', 'Flour', 15.00, 27.00, 3.00, 18.00, 12.00),
('2024-06-10', 1111, 'Lotsa Cows Milk', 'Milk', 20.00, 30.00, 5.00, 25.00,10.00),
('2024-06-10', 1121, 'Eggs', 'Eggs', 12.00, 18.00, 2.00, 14.00, 6.00),
('2024-06-10', 1131, 'Rosea Toilet Roll', 'Toiletries', 14.00, 22.00, 3.00, 17.00,8.00),
('2024-06-10', 1141, 'Mo Petroleum Jelly', 'Cosmetics', 11.00, NULL, 1.50, 13.50, 4.00),
('2024-06-15', 1151, 'Hair ties', 'Cosmetics', 13.00, 21.00, 2.50, 16.50, 8.00),
('2024-06-16', 1161, 'Soke Maize Meal', 'Flour', 19.00, 25.00, 4.00, 23.00, 6.00),
('2024-06-17', 1171, 'Edge Self Raising Flour', 'Flour', 18.00, 26.00, 3.50, 21.50, 8.00),
('2024-06-17', 1181, 'Soke Maize Meal', 'Flour', 17.00, NULL, 2.50, 19.50, 7.00),
('2024-06-19', 1191, 'Edge Self Raising Flour', 'Flour', 21.00, 29.00, 4.50, 24.50, 8.00),
('2024-06-21', 1201, 'Iso Cows Milk', 'Milk', 16.00, 24.00, 3.00, 20.00, 8.00),
('2024-06-21', 1211, 'Sukar White Sugar', 'Sugar', 15.00, 23.00, 2.00, 17.00, 8.00),
('2024-06-21', 1221, 'Rosea Toilet Roll', 'Toiletries', 14.00, 22.00, 2.50, 16.50, 7.00),
('2024-06-21', 1231, 'Eggs', 'Eggs', 13.00, NULL, 2.00, 15.00, 5.00),
('2024-06-22', 1241, 'Lotsa Cows Milk', 'Milk', 20.00, 28.00, 4.00, 24.00, 8.00),
('2024-06-22', 1251, 'Wandad Biryani', 'Rice', 19.00, 27.00, 3.50, 22.50, 8.00),
('2024-06-26', 1261, 'Soke Maize Meal', 'Flour', 22.00, 30.00, 4.50, 26.50, 8.00),
('2024-06-27', 1271, 'Bas Basmati Rice', 'Rice', 21.00, NULL, 3.50, 24.50,9.00),
('2024-06-27', 1281, 'Ququ Self Raising Flour', 'Flour', 18.00, 26.00, 4.00, 22.00,  8.00),
('2024-06-29', 1291, 'Wanwan Sindano Rice', 'Rice', 17.00, 25.00, 3.50, 20.50, 8.00),
('2024-06-30', 1301, 'Iso Cows Milk', 'Milk', 16.00, 24.00, 2.50, 18.50,  8.00),
('2024-07-03', 1311, 'Sukar White Sugar', 'Sugar', 15.00, 23.00, 3.00, 18.00,  8.00),
('2024-07-03', 1321, 'Rosea Toilet Roll', 'Toiletries', 14.00, 22.00, 2.50, 16.50,  8.00),
('2024-07-03', 1331, 'Eggs', 'Eggs', 13.00, NULL, 2.00, 14.00,  7.00),
('2024-07-03', 1341, 'Ququ Self Raising Flour', 'Flour', 20.00, 28.00, 4.00, 24.00,  8.00),
('2024-07-05', 1351, 'Lotsa Cows Milk', 'Milk', 19.00, 27.00, 3.50, 22.50,  8.00),
('2024-07-05', 1361, 'Wandad Biryani', 'Rice', 18.00, 26.00, 3.00, 21.00,  8.00),
('2024-07-05', 1371, 'Wanwan Sindano Rice', 'Rice', 17.00, NULL, 2.50, 19.50,  7.00),
('2024-07-06', 1381, 'Iso Cows Milk', 'Milk', 16.00, 24.00, 3.00, 20.00,  8.00),
('2024-07-06', 1391, 'Sukar White Sugar', 'Sugar', 15.00, 23.00, 2.50, 17.50,  8.00),
('2024-07-10', 1401, 'Rosea Toilet Roll', 'Toiletries', 14.00, 22.00, 2.00, 16.00,  8.00);




--fill in missing sale price
UPDATE Store_sales
SET Sale_price = Product_cost + profit
WHERE Sale_price IS NULL;



-- Calculate total sales and average sales per products and their category
SELECT
    Product_name,Product_category,
    SUM(Sale_price) AS total_sales,
    AVG(Sale_price) AS average_sales,
	SUM(Profit) AS total_profit
FROM
    Store_sales
GROUP BY
    Product_category, Product_name;


SELECT
    Product_category,
    SUM(Sale_price) AS total_sales,
    AVG(Sale_price) AS average_sales,
	SUM(Profit) AS total_profit
FROM
    Store_sales
GROUP BY
    Product_category;


--add quantity of products sold,final product cost & Final sale price
ALTER TABLE Store_sales
ADD Quantity_sold INT;

ALTER TABLE Store_sales
ADD Final_price AS (Sale_price * Quantity_sold) PERSISTED;

ALTER TABLE Store_sales
ADD Final_productcost AS (Product_cost * Quantity_sold) PERSISTED;

UPDATE Store_sales
SET Quantity_sold = CASE product_id
    WHEN 1010 THEN 5
    WHEN 1020 THEN 5
    WHEN 1030 THEN 4
    WHEN 1040 THEN 3
	WHEN 1050 THEN 3
	WHEN 1060 THEN 6
	WHEN 1070 THEN 3
	WHEN 1080 THEN 3
	WHEN 1090 THEN 1
	WHEN 1101 THEN 2
	WHEN 1111 THEN 1
	WHEN 1121 THEN 1
	WHEN 1131 THEN 1
	WHEN 1141 THEN 1
	WHEN 1151 THEN 3
	WHEN 1161 THEN 4
	WHEN 1171 THEN 3
	WHEN 1181 THEN 2
	WHEN 1191 THEN 3
	WHEN 1201 THEN 2
	WHEN 1211 THEN 3
	WHEN 1221 THEN 3
	WHEN 1231 THEN 2
	WHEN 1241 THEN 2
	WHEN 1251 THEN 3
	WHEN 1261 THEN 1
	WHEN 1271 THEN 6
	WHEN 1281 THEN 1
	WHEN 1291 THEN 3
	WHEN 1301 THEN 2
	WHEN 1311 THEN 2
	WHEN 1321 THEN 4
	WHEN 1331 THEN 5
	WHEN 1341 THEN 6
	WHEN 1351 THEN 3
	WHEN 1361 THEN 3
	WHEN 1371 THEN 2
	WHEN 1381 THEN 1
	WHEN 1391 THEN 1
	WHEN 1401 THEN 4
    ELSE Quantity_sold
END;


-- Most Bought Products
SELECT TOP 3 product_name, Product_category,SUM(Quantity_sold) AS total_quantity
FROM Store_sales
GROUP BY Product_name, Product_category
ORDER BY total_quantity DESC;

-- Least Bought Products
SELECT TOP 3 Product_name, Product_category,SUM(Quantity_sold) AS total_quantity
FROM Store_sales
GROUP BY Product_name, Product_category
ORDER BY total_quantity ASC;


-- Most Expensive Products
SELECT TOP 3 Product_name,Product_category, Sale_price
FROM Store_sales
ORDER BY Sale_price DESC;

-- Cheapest Products
SELECT TOP 3 Product_name,Product_category, Sale_price
FROM Store_sales
ORDER BY Sale_price ASC;


--Top 2 Busiest days
SELECT TOP 2
    Sale_date, 
    COUNT(*) AS entry_count
FROM 
    Store_sales
GROUP BY 
    Sale_date
ORDER BY 
    entry_count DESC;



--since we have the quantity of each products bought and the final price, we can now properly calculate profit, which will in turn change the margin values

UPDATE Store_sales
SET Profit = Final_price - Final_productcost
WHERE Profit IS NOT NULL;






SELECT ID, Sale_date, Product_ID, Product_name, Margin, Final_price, Profit, Final_productcost
FROM Store_sales;





--Create a view to summarize the table 

CREATE VIEW summaryview AS
SELECT
    Product_name,
    SUM(Final_price) AS total_sales,
    AVG(Final_price) AS average_sales,
    SUM(Product_cost * Quantity_sold) AS total_product_cost,
    SUM(Profit) AS total_profit,
    SUM(Total_expenses + Profit - (Product_cost * Quantity_sold)) AS total_margin
FROM
    Store_sales
WHERE
    Sale_date BETWEEN '2024-06-01' AND '2024-07-31'
GROUP BY
    Product_name;

SELECT * 
FROM summaryview 
WHERE total_profit > 50;


--Aggregate sales using CTE







