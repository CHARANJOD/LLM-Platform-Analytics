# SQL Scripts - LLM Platform Analytics

This folder contains all SQL scripts developed during the SQL phase of the project.

## SQL Files

### 01_database_setup.sql
Creates and selects the project database.

### 02_schema.sql
Creates tables and imports the cleaned dataset.

### 03_validation.sql
Validates imported data using row counts, table checks, and schema verification.

### 04_data_exploration.sql
Explores the dataset using DESCRIBE statements, sample records, and basic data inspection.

### 05_joins.sql
Performs joins between interaction, session, and user tables to combine related information.

### 06_aggregation_queries.sql
Contains aggregation queries such as:
- Total Tokens by Channel
- Requests by Country
- Tokens by Country
- Tokens by Region
- Tokens by Account Tier
- Tokens by Segment
- Average Cost by Channel
- Average Latency by Region

### 07_kpi_queries.sql
Calculates dashboard KPIs including:
- Total Users
- Total Sessions
- Total Interactions
- Total Tokens
- Platform Cost
- Average Latency
- Response Quality
- Failure Rate
- Tool Usage Rate
- Toxicity Rate
- User Feedback Score
- Average Tool Calls
- Tokens per Second

### 08_views.sql
Creates SQL views for the most important dashboard KPIs to simplify Power BI reporting.

### 09_window_functions.sql
Implements advanced SQL window functions:
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- LEAD()
- Running Total