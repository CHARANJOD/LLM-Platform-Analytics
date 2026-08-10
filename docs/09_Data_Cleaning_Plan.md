# Data Cleaning Plan v1

## Project

LLM Platform Analytics: User Engagement, Product Adoption & Operational Performance

## Purpose

This document defines the data cleaning strategy for the LLM Platform Analytics project. It outlines how missing values, duplicate records, data type issues, and category consistency will be handled before exploratory data analysis (EDA). The objective is to ensure that the datasets are accurate, consistent, and ready for analysis.

## Missing Value Strategy

The datasets were checked for missing values during the data profiling phase. Only a few columns contained missing values, and each was reviewed to determine the most appropriate handling strategy.

| Dataset | Column | Missing Values | Cleaning Decision | Reason |
|---------|--------|---------------:|-------------------|--------|
| Interactions | user_feedback_score | 4120 | Keep as NULL | User feedback is optional and not available for every interaction. |
| Sessions | csat_mean | 63 | Keep as NULL | Very few missing values; keeping them preserves the original data. |
| Sessions | requests_per_minute | 35 | Keep as NULL | Low number of missing values; no significant impact on analysis. |
| Users | avg_csat | 3 | Keep as NULL | Very few missing values; no imputation required. |

### Summary

- No missing values will be removed.
- No imputation will be performed.
- Missing values will be retained because they represent unavailable or optional information rather than data errors.

## Duplicate Handling Strategy

Duplicate records were checked during the data profiling phase using the primary identifier columns in each dataset.

| Dataset | Identifier Column | Duplicate Records | Cleaning Decision |
|---------|-------------------|------------------:|-------------------|
| Interactions | interaction_id | 0 | No action required |
| Sessions | session_id | 0 | No action required |
| Prompts | prompt_id | 0 | No action required |
| Users | user_id | 0 | No action required |

### Summary

- No duplicate records were identified.
- No duplicate removal is required.
- All primary identifiers are unique and maintain data integrity.

## Data Type Fix Strategy

Data type validation was performed during the data profiling phase to identify incorrect data formats and ensure all columns are suitable for analysis.

| Validation Check | Result | Cleaning Decision |
|------------------|--------|-------------------|
| Numeric stored as text | Not detected | No action required |
| Malformed timestamp_utc values | Not detected | No action required |
| latency_timeout_flag values | Only True and False found | No action required |

### Summary

- No data type issues were detected.
- All timestamp values are valid.
- Boolean fields contain only valid values.
- No data type conversion is required before analysis.

## Category Harmonisation Strategy

Categorical columns were reviewed to identify inconsistent labels, spelling variations, or unexpected category values that could affect analysis.

| Column | Valid Categories | Cleaning Decision |
|--------|------------------|-------------------|
| account_tier | free, pro, enterprise | No action required |
| channel | web_app, api, mobile_app, internal_tool, slack | No action required |
| region | APAC, EMEA, AMER | No action required |
| segment | individual, team, enterprise_team | No action required |

### Summary

- Category values are consistent across all datasets.
- No spelling variations or unexpected category values were identified.
- No category harmonisation is required before analysis.

## Keep / Drop / Impute Decision Summary

| Data Quality Issue | Decision | Reason |
|--------------------|----------|--------|
| Missing Values | Keep | Missing values represent optional or unavailable information and do not significantly affect analysis. |
| Duplicate Records | Keep | No duplicate records were detected. |
| Data Type Issues | Keep | All data types are valid and require no correction. |
| Category Values | Keep | Category values are already standardized and consistent. |

### Overall Cleaning Decision

The datasets are in good quality and require minimal cleaning. Since no major data quality issues were detected, the original data will be preserved. No rows or columns will be dropped, and no imputation or category harmonisation is required before exploratory data analysis.

## Conclusion

Based on the data profiling and validation performed in previous stages, the datasets are clean, consistent, and suitable for analysis. This cleaning plan documents the decisions taken before the data cleaning phase and serves as a reference for subsequent exploratory data analysis (EDA) and dashboard development.