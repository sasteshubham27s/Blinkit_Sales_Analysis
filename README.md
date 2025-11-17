## Blinkit_Sales_Analysis
Blinkit Sales Analysis using SQL, covering data cleaning, transformation, and key sales insights across outlets, products, and customer segments.

## Overview 
This project is a complete end-to-end data analysis of Blinkit’s sales performance, designed to demonstrate practical skills in SQL, Python, and Power BI. The goal is to explore how product attributes, outlet characteristics, and customer ratings influence overall sales across Blinkit’s retail network.

## Problem Statement
Blinkit, a leading instant-delivery retail platform, aims to understand its sales performance across various outlets and product categories. However, the raw dataset contains inconsistent category labels, missing values, and unstructured information, making it difficult for the company to extract actionable insights. The problem is to clean and preprocess the sales data, perform exploratory data analysis, and identify trends in product performance, outlet efficiency, and customer buying patterns. This analysis will help Blinkit optimize inventory, improve outlet operations, and enhance overall profitability.

# Tools 
Python, SQL, Power BI, EDA, visualization, and project deployment.

•	Libraries = Pandas, Matplotlib, Seaborn

## Data Understanding
The dataset contains item-level sales records across multiple Blinkit outlets. It includes:
•	Product attributes (Type, Weight, Visibility, Fat Content)

•	Outlet characteristics (Size, Location Tier, Establishment Year)

•	Customer rating

•	Sales amount

This allows analysis across product, location, and store-performance dimensions.

##  Data Cleaning & Preparation (Python ,Pandas)
The data was cleaned using Pandas to ensure accuracy and consistency:
•	Fixed inconsistent labels (e.g., “lf”, “low fat” → “Low Fat”)

•	Filled missing values (weight, outlet size)

•	Corrected numeric formats

•	Standardized category variables

This ensured reliability for downstream analysis and dashboarding.

 ## Data Understanding

The dataset contained 12 columns related to product details, outlet information, and revenue:

•	Item_Fat_Content

•	Item_Identifier

•	Item_Type

•	Outlet_Establishment_Year

•	Outlet_Identifier

•	Outlet_Location_Type

•	Outlet_Size

•	Outlet_Type

•	Item_Visibility

•	Item_Weight

•	Sales

•	Rating


# Initial inspection (df.info(), df.describe()) showed:
Missing values in Item_Weight using 

# Data Cleaning

•	Fixing inconsistent category names
Fat content values like "LF", "low fat", "reg" were normalized to:
'Low Fat'
'Regular'

•	Handling missing values
Missing Item_Weight values were filled with mean

# Exploratory Data Analysis (EDA)
•	Sales Distribution
A histogram revealed:
•	Sales are right-skewed.
<img width="691" height="391" alt="data distribution" src="https://github.com/user-attachments/assets/584c4265-f40b-4332-b931-c1863186bb78" />
•	Majority of items have moderate sales, few items dominate with high sales.

•	Outlet  Tier By  Item Fat Content
<img width="785" height="485" alt="Outlet Tier by Item Fat Content" src="https://github.com/user-attachments/assets/08461e15-5fd1-4d37-8378-fe422a2e824a" />
Tier 3 outlets generate the highest sales for both Low Fat and Regular items, making them the strongest-performing customer segment for item fat categories

•	Sales By Fat Content
<img width="513" height="384" alt="Sales By Fat Contents" src="https://github.com/user-attachments/assets/0321c375-f6c4-4426-9725-867d394e6a47" />
Regular fat products contribute a larger share of total revenue compared to Low Fat products.

•	Sales By Item Type
<img width="967" height="541" alt="Sales by Item Type" src="https://github.com/user-attachments/assets/2efe7618-11fe-4a51-9b9a-35969e32c29a" />
Snack Foods, Fruits & Vegetables, and Household items are the top-selling product categories.

•	Average Sales By Rating
<img width="1004" height="541" alt="Avg Sales by Rating" src="https://github.com/user-attachments/assets/15360d99-838b-4f67-a7db-362f3527fbd2" />
Average sales increase with higher product ratings, indicating customers prefer top-rated items.


## Exploratory Data Analysis (SQL)
SQL queries were used to uncover insights such as:
•	Total sales  by Outlet

•	Average sales by outlet type, item type

•	Highest sales per outlet type

•	Total sales by outlet establishment year

•	Top 10 performing product categories

•	Impact of store size and city tier on sales
These queries helped identify key drivers of revenue.


## Power BI Dashboard
A fully interactive Power BI dashboard was developed containing:
•	KPI Metrics

•	Sales by Outlet

  Average Sales by Item and Location
  
•	Top 10 performing products

•	Rating influence visualization

•	Filters (slicers) for multi-dimensional analysis

This enables decision-makers to understand sales patterns quickly.
<img width="973" height="542" alt="Blinkit sales Analysis PBI Dashboard" src="https://github.com/user-attachments/assets/d95c2d6d-6d41-4f1f-a3e0-4aecbbd9e906" />

## Key Insights
The analysis showed:
•	Supermarket Type 1 outlets generate the highest revenue

•	Tier 3 cities outperform Tier 1 & 2 areas

•	Medium-sized outlets show the strongest performance

•	Snacks, Frozen Foods, Fruits & Vegetables are the most profitable categories

•	Highly rated products sell more

•	Moderate visibility items perform better

These insights support strategic decisions for expansion and marketing.

## Recommendations
•	Expand Supermarket Type 1 stores

•	Boost operations in Tier 3 cities

•	Improve product placement visibility

•	Increase stock for fast-moving items

•	Promote items with high customer ratings

•	Implement loyalty programs for smaller-city customers

## Conclusion
This project demonstrates how data-driven insights can help Blinkit optimize:
•	Store performance

•	Inventory management

•	Customer targeting

•	Product promotion strategies

The full analysis highlights the value of combining SQL, Python, and Power BI to solve real business problems.











