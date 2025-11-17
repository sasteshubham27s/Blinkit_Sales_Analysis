## Blinkit_Sales_Analysis
Blinkit Sales Analysis using SQL, covering data cleaning, transformation, and key sales insights across outlets, products, and customer segments.

## Overview 
This project is a complete end-to-end data analysis of Blinkit’s sales performance, designed to demonstrate practical skills in SQL, Python, and Power BI. The goal is to explore how product attributes, outlet characteristics, and customer ratings influence overall sales across Blinkit’s retail network.

## Problem Statement
Blinkit, a leading instant-delivery retail platform, aims to understand its sales performance across various outlets and product categories. However, the raw dataset contains inconsistent category labels, missing values, and unstructured information, making it difficult for the company to extract actionable insights. The problem is to clean and preprocess the sales data, perform exploratory data analysis, and identify trends in product performance, outlet efficiency, and customer buying patterns. This analysis will help Blinkit optimize inventory, improve outlet operations, and enhance overall profitability.

## Data Understanding
The dataset contains item-level sales records across multiple Blinkit outlets. It includes:
•	Product attributes (Type, Weight, Visibility, Fat Content)
•	Outlet characteristics (Size, Location Tier, Establishment Year)
•	Customer rating
•	Sales amount
This allows analysis across product, location, and store-performance dimensions.

##  Data Cleaning & Preparation
The data was cleaned using SQL to ensure accuracy and consistency:
•	Fixed inconsistent labels (e.g., “lf”, “low fat” → “Low Fat”)
•	Filled missing values (weight, outlet size)
•	Corrected numeric formats
•	Removed duplicates and formatting issues
•	Standardized category variables
This ensured reliability for downstream analysis and dashboarding.

## Exploratory Data Analysis (SQL)
SQL queries were used to uncover insights such as:
•	Total and average sales by outlet type
•	Top-performing product categories
•	Impact of store size and city tier on sales
•	Highest revenue-generating items
•	Correlation between rating and sales
•	Relationship between visibility and purchase likelihood
These queries helped identify key drivers of revenue.

## Power BI Dashboard
A fully interactive Power BI dashboard was developed containing:
•	KPI Metrics
•	Sales by Outlet, Item, and Location
•	Top 10 performing products
•	Rating influence visualization
•	Filters (slicers) for multi-dimensional analysis
This enables decision-makers to understand sales patterns quickly.
<img width="973" height="542" alt="Blinkit sales Analysis PBI Dashboard" src="https://github.com/user-attachments/assets/d95c2d6d-6d41-4f1f-a3e0-4aecbbd9e906" />








