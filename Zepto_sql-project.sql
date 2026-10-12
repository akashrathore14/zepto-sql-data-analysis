DROP TABLE IF EXISTS zepto;

CREATE TABLE zepto (
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,	
quantity INTEGER
);

SELECT * FROM zepto;

COPY zepto (Category, name, mrp, discountPercent, availableQuantity, discountedSellingPrice, weightInGms, outOfStock, quantity)
FROM 'D:\Excel Learning\Linkedln project\zepto.csv'
CSV HEADER;

-- Data exploration
-- count of rows
SELECT COUNT(*) FROM zepto;

-- sample data
SELECT * FROM zepto
LIMIT 10;

-- null value
SELECT * FROM zepto
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

--different product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

--products in stock vs out of stock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

--product names present multiple times
SELECT name, COUNT(sku_id) AS "Number of SKUs"
FROM zepto
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) DESC;

SELECT * FROM zepto;

-- Data cleaning
--products with price = 0
SELECT * FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

DELETE FROM zepto
WHERE mrp = 0;

--convert paise to rupees
UPDATE zepto
SET mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

SELECT mrp, discountedSellingPrice FROM zepto;

SELECT * FROM zepto;

-- Data analysis

--1) Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountpercent
FROM zepto
ORDER BY discountpercent DESC LIMIT 10;

--2) What are the Products with High MRP but Out of Stock
SELECT DISTINCT name, mrp, outofstock
FROM zepto
WHERE outofstock = 'true'
ORDER BY mrp DESC;

--3) Calculate Estimated Revenue for each category
SELECT category, SUM(mrp) AS estimate_revenue
FROM zepto
GROUP BY category
ORDER BY SUM(mrp) DESC;

--4) Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT name, mrp, discountpercent 
FROM zepto
WHERE mrp>500 AND discountpercent<10
ORDER BY discountpercent DESC;

--5) Identify the top 5 categories offering the highest average discount percentage.
WITH highest_discount AS (
   SELECT category, ROUND(AVG(discountpercent), 2) AS avg_discount
   FROM zepto
   GROUP BY category
)
SELECT category, avg_discount
FROM highest_discount
WHERE avg_discount > 6
ORDER BY avg_discount DESC;

--6) Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightingms, discountedsellingprice,
     ROUND(discountedsellingprice/weightingms, 2) AS price_per_gram
FROM zepto
WHERE weightingms>100
ORDER BY price_per_gram ASC;

--7) Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightingms,
CASE WHEN weightingms < 1000 THEN 'Low'
	WHEN weightingms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto
ORDER BY weightingms DESC;

--8)What is the Total Inventory Weight Per Category
SELECT category, SUM(weightingms)
FROM zepto
GROUP BY category
ORDER BY SUM(weightingms) DESC;



