# 🚲 BikeStore-SQL-Project

An end-to-end SQL project focused on schema design, relational database management, and sales reporting for a retail bike business.

---

## 📌 Project Overview
The goal of this project is to design and implement a robust relational database for a fictional bike retail store. This system manages complex data relationships between customers, physical store locations, product inventory (bikes), and sales transactions.

This project demonstrates proficiency in *Data Definition Language (DDL), **Data Manipulation Language (DML), and advanced **JOIN* queries to extract business insights.

## 🏗️ Database Schema
The database, BikeStoreDB, consists of four primary entities:
* *Customers:* Stores personal details and contact information.
* *Stores:* Tracks physical retail locations across different regions.
* *Bikes:* Catalog of products with pricing and stock details.
* *Sales:* The central transaction table linking customers, bikes, and stores.

### Relationship Diagram
- *Sales ↔ Customers:* Many-to-One (One customer can have multiple sales).
- *Sales ↔ Bikes:* Many-to-One (One bike model can be sold multiple times).
- *Sales ↔ Stores:* Many-to-One (Each sale is linked to a specific store location).

---

## 🚀 Key SQL Features
In this project, I implemented several core SQL concepts:
* *Relational Mapping:* Used FOREIGN KEY constraints to ensure data integrity across tables.
* *Automation:* Utilized AUTO_INCREMENT for primary keys to manage record entry.
* *Data Types:* Applied specific types like DECIMAL(10,2) for financial accuracy and DATE for temporal tracking.
* *Error Handling:* Used DROP DATABASE IF EXISTS and IF NOT EXISTS logic for re-runnable scripts.

---

## 📊 Business Insights (Queries)
I designed this database to answer critical business questions, such as:
1.  *Top Performing Stores:* Which location generates the most revenue?
2.  *Customer Loyalty:* Which customers have made the highest number of purchases?
3.  *Inventory Management:* Which bike models are currently low on stock?
4.  *Sales Trends:* How do sales volume fluctuate over specific months
