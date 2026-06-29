# Project 1: Data Cleaning & Preparation

## Overview

This project was completed as part of the DecodeLabs Data Analytics Internship Program. The objective was to assess the quality of a transactional dataset, identify data issues, perform necessary cleaning operations, and validate the dataset for further analysis.

## Dataset Information

- Total Records: 1,200
- Total Columns: 14
- Dataset Type: E-commerce Transaction Data

## Tools Used

- Python
- Pandas
- Google Colab
- GitHub

## Data Quality Checks Performed

### Missing Values

A missing value audit was conducted across all columns. The CouponCode column contained 309 missing values, which were replaced with NO_COUPON to indicate orders where no coupon was applied.

### Duplicate Checks

- Duplicate Rows: 0
- Duplicate Order IDs: 0

### Data Type Validation

All columns were reviewed to ensure appropriate data types were assigned for analysis.

### Date Validation

The Date column was checked for consistency and formatting issues. No invalid dates were found.

### Business Logic Validation

The TotalPrice column was validated against:

TotalPrice = Quantity × UnitPrice

No calculation inconsistencies were identified.

## Deliverables

- Raw Dataset
- Cleaned Dataset
- Data Cleaning Notebook
- Data Integrity Artifact

## Outcome

The dataset successfully passed all validation checks and was prepared for downstream analysis and reporting.
