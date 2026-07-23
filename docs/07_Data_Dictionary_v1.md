# Data Dictionary v1

## Project

LLM Platform Analytics: User Engagement, Product Adoption & Operational Performance

---

# Interaction Dataset

| Column Name | Data Type | Description | Business Category |
|--------------|-----------|-------------|-------------------|
| interaction_id | String | Unique interaction identifier | Primary Key |
| session_id | String | Session identifier | Session |
| user_id | String | User identifier | User |
| prompt_id | String | Prompt identifier | Prompt |
| timestamp_utc | DateTime | Date and time of interaction | Time |
| channel | String | Platform used by the user | Channel |
| use_case | String | AI use case | Product |
| country_code | String | User country | Geography |
| region | String | User region | Geography |
| account_tier | String | Subscription plan | Customer |
| segment | String | Customer segment | Customer |
| model_provider | String | AI model provider | Model |
| model_name | String | LLM model name | Model |
| total_tokens | Integer | Total tokens consumed | Usage |
| latency_ms | Float | Response latency | Performance |
| cost_usd | Float | Cost per interaction | Cost |
| response_quality_score | Float | AI response quality score | Quality |
| is_failure | Boolean | Failure indicator | Reliability |
| failure_type | String | Failure reason | Reliability |
| user_feedback_score | Float | User rating | Feedback |
| user_feedback_label | String | Feedback category | Feedback |

---

# Sessions Dataset

| Column Name | Data Type | Description | Business Category |
|--------------|-----------|-------------|-------------------|
| session_id | String | Session identifier | Primary Key |
| user_id | String | User identifier | User |
| total_requests | Integer | Requests in session | Engagement |
| failed_requests | Integer | Failed requests | Reliability |
| failure_rate | Float | Failure percentage | Reliability |
| avg_latency_ms | Float | Average response latency | Performance |
| avg_response_quality_score | Float | Average quality score | Quality |
| total_cost_usd | Float | Session cost | Cost |
| total_tokens | Integer | Tokens consumed | Usage |
| session_duration_minutes | Float | Session duration | Engagement |
| requests_per_minute | Float | Request frequency | Productivity |
| csat_mean | Float | Average customer satisfaction | Feedback |

---

# Users Dataset

| Column Name | Data Type | Description | Business Category |
|--------------|-----------|-------------|-------------------|
| user_id | String | User identifier | Primary Key |
| total_sessions | Integer | Number of sessions | Engagement |
| total_requests | Integer | Total requests | Usage |
| overall_failure_rate | Float | Failure percentage | Reliability |
| avg_csat | Float | Average satisfaction | Feedback |
| total_cost_usd | Float | Total user cost | Cost |
| total_tokens | Integer | Tokens consumed | Usage |
| primary_use_case | String | Main AI use case | Product |
| primary_channel | String | Main platform | Channel |
| dominant_segment | String | Customer segment | Customer |
| dominant_account_tier | String | Subscription plan | Customer |
| dominant_region | String | User region | Geography |
| high_risk_user_flag | Boolean | High-risk user indicator | Risk |

---

# Prompts Dataset

| Column Name | Data Type | Description | Business Category |
|--------------|-----------|-------------|-------------------|
| prompt_id | String | Prompt identifier | Primary Key |
| prompt_len | Integer | Prompt length | Prompt |
| instruction_template | String | Prompt template | Prompt |
| use_case | String | AI use case | Product |
| n_interactions | Integer | Number of interactions | Usage |
| n_sessions | Integer | Number of sessions | Usage |
| n_users | Integer | Number of users | Usage |
| instruction_len | Integer | Length of instruction | Prompt |

---

# Purpose of the Data Dictionary

This document serves as the master reference for understanding the dataset. It defines the meaning, data type, and business relevance of important columns used throughout SQL analysis, Python EDA, statistical analysis, and Power BI dashboard development.