# Data Profiling Report

## Dataset Summary

| Dataset | Rows | Columns |
|---------|------:|--------:|
| Interactions | 9000 | 55 |
| Prompts | 36 | 14 |
| Sessions | 1595 | 37 |
| Users | 438 | 21 |

---

## Data Types

The datasets contain the following data types:

- object
- int64
- float64
- bool

The detected data types are appropriate for the current analysis.

---

## Missing Values

| Dataset | Column | Missing Values |
|----------|--------|---------------:|
| Interactions | user_feedback_score | 4120 |
| Sessions | csat_mean | 63 |
| Sessions | requests_per_minute | 35 |
| Users | avg_csat | 3 |

All other columns contain no missing values.

---

## Duplicate Records

| Dataset | Duplicate IDs |
|----------|--------------:|
| Interactions | 0 |
| Sessions | 0 |
| Prompts | 0 |
| Users | 0 |

No duplicate primary identifiers were detected.

---

## Summary

- Four datasets were successfully profiled.
- Dataset dimensions were verified.
- Data types were inspected.
- Missing values were identified for a few quality-related metrics.
- No duplicate records were found.
- The datasets are suitable for the next stage of data cleaning and exploratory data analysis.