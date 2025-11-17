CREATE TABLE blinkit_sales (
    Item_Fat_Content          VARCHAR(30),
    Item_Identifier           VARCHAR(30),
    Item_Type                 VARCHAR(50),
    Outlet_Establishment_Year INT,
    Outlet_Identifier         VARCHAR(30),
    Outlet_Location_Type      VARCHAR(20),
    Outlet_Size               VARCHAR(20),
    Outlet_Type               VARCHAR(50),
    Item_Visibility           FLOAT,
    Item_Weight               FLOAT,
    Sales                     FLOAT,
    rating                    INT
);

SELECT* FROM blinkit_sales;

ALTER TABLE blinkit_sales
RENAME COLUMN Ttem_Fat_Content to Item_Fat_Content;

ALTER TABLE blinkit_sales
ALTER COLUMN Rating TYPE FLOAT USING Rating::float;


---load data----
COPY blinkit_sales(Item_Fat_Content	,Item_Identifier,Item_Type,	Outlet_Establishment_Year,	Outlet_Identifier,	Outlet_Location_Type,	Outlet_Size,	Outlet_Type	,Item_Visibility,	Item_Weight	,Sales,	Rating)
FROM 'C:\Users\saste\Downloads\blinkit_data.csv'
CSV HEADER;

---extract data---

SELECT *FROM blinkit_sales;


---Fix inconsistent category names------------
UPDATE blinkit_sales
SET item_fat_content = 
    CASE
        WHEN LOWER(item_fat_content) IN ('lf', 'low fat') THEN 'Low Fat'
        WHEN LOWER(item_fat_content) IN ('reg', 'regular') THEN 'Regular'
        ELSE item_fat_content
    END;

---Handle missing or null values--
SELECT 
    SUM(CASE WHEN item_weight IS NULL THEN 1 ELSE 0 END) AS missing_weight,
    SUM(CASE WHEN outlet_size IS NULL THEN 1 ELSE 0 END) AS missing_size
FROM blinkit_sales;


--Replace missing numeric values with average--

UPDATE blinkit_sales
SET item_weight = (
    SELECT AVG(item_weight) 
    FROM blinkit_sales 
    WHERE item_weight IS NOT NULL
)
WHERE item_weight IS NULL;

--Sales Performance Analysis---------------------

--1..Total sales by outlet

SELECT
    outlet_type,
   ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM blinkit_sales
GROUP BY outlet_type
ORDER BY total_sales DESC;

----Average sales by outlet type-------------

SELECT
    outlet_type,
   ROUND(AVG(sales)::numeric, 2) AS avg_sales
FROM blinkit_sales
GROUP BY outlet_type
ORDER BY avg_sales DESC;

----Average sales by item type-----------------------------------------
SELECT Item_Type, 
        ROUND(AVG(sales)::numeric, 2) AS avg_sales
FROM blinkit_sales
GROUP BY Item_Type
ORDER BY avg_sales DESC;

-----Highest sales per outlet type--------
SELECT Outlet_Type, 
       MAX(Sales) AS max_sale, 
       MIN(Sales) AS min_sale
FROM blinkit_sales
GROUP BY Outlet_Type;


----	Total sales by outlet establishment year-----------------------
SELECT Outlet_Establishment_Year, 
       ROUND(SUM(Sales)::numeric, 2) AS total_sales
FROM blinkit_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;


----Product Insights
----- Top 10 best-selling products

SELECT Item_Identifier, 
       ROUND(SUM(Sales)::NUMERIC,2) AS total_sales
FROM blinkit_sales
GROUP BY Item_Identifier
ORDER BY total_sales DESC
LIMIT 10;

----Which city tier (location type) performs best per outlet size----------


SELECT Outlet_Location_Type, Outlet_Size,
       ROUND(AVG(Sales)::NUMERIC,2) AS avg_sales
FROM blinkit_sales
GROUP BY Outlet_Location_Type, Outlet_Size
ORDER BY avg_sales DESC;

----Top 5 outlet-item type combinations by sales-------------
 SELECT Outlet_Identifier, Item_Type, 
       ROUND(SUM(Sales)::NUMERIC,2) AS total_sales
FROM blinkit_sales
GROUP BY Outlet_Identifier, Item_Type
ORDER BY total_sales DESC
LIMIT 5;
