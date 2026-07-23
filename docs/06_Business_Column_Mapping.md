# Business Column Mapping

## 1. Interaction-Level Data (llm_system_interactions.csv)

| Column | Business Meaning | Used For |
|--------|------------------|----------|
| interaction_id | Unique interaction identifier | Primary Key |
| session_id | Session identifier | Session Analysis |
| user_id | User identifier | User Analysis |
| timestamp_utc | Interaction timestamp | Trend Analysis |
| channel | Platform used by user | Channel Analysis |
| use_case | AI use case | Product Adoption |
| country_code | User country | Geographic Analysis |
| region | User region | Regional Analysis |
| account_tier | Subscription plan | Customer Segmentation |
| segment | User segment | Business Segmentation |
| model_provider | AI model provider | Model Comparison |
| model_name | LLM model used | Model Performance |
| total_tokens | Tokens consumed | Cost Analysis |
| latency_ms | Response latency | Performance Analysis |
| cost_usd | Cost per interaction | Cost Optimization |
| response_quality_score | AI response quality | Quality Analysis |
| is_failure | Request success/failure | Reliability Analysis |
| failure_type | Failure category | Root Cause Analysis |
| user_feedback_score | User rating | Customer Satisfaction |
| user_feedback_label | Feedback category | Feedback Analysis |
| tool_calls_count | Number of tool calls | Tool Usage Analysis |
| tokens_per_second | Processing speed | Performance Analysis |
| prompt_id | Prompt identifier | Prompt Analysis |

---

## 2. Session-Level Data (llm_system_sessions_summary.csv)

| Column | Business Meaning | Used For |
|--------|------------------|----------|
| session_id | Session identifier | Primary Key |
| user_id | User identifier | Join with Users |
| total_requests | Requests in session | Engagement Analysis |
| failed_requests | Failed requests | Reliability |
| failure_rate | Failure percentage | Operational KPI |
| avg_latency_ms | Average latency | Performance KPI |
| avg_response_quality_score | Average quality | Quality KPI |
| total_cost_usd | Session cost | Cost Analysis |
| total_tokens | Tokens consumed | Usage Analysis |
| session_duration_minutes | Session duration | User Engagement |
| requests_per_minute | Session activity | Productivity |
| csat_mean | Average satisfaction | Customer Satisfaction |

---

## 3. User-Level Data (llm_system_users_summary.csv)

| Column | Business Meaning | Used For |
|--------|------------------|----------|
| user_id | User identifier | Primary Key |
| total_sessions | Number of sessions | User Engagement |
| total_requests | Total requests | Usage Analysis |
| overall_failure_rate | User failure rate | Reliability |
| avg_csat | Average satisfaction | Customer Experience |
| total_cost_usd | User cost | Cost Analysis |
| total_tokens | Total tokens | Usage Analysis |
| primary_use_case | Main AI use case | Adoption Analysis |
| primary_channel | Main platform | Channel Analysis |
| dominant_segment | Customer segment | Segmentation |
| dominant_account_tier | Subscription plan | Revenue Analysis |
| dominant_region | User region | Geographic Analysis |
| high_risk_user_flag | High-risk indicator | Risk Analysis |

---

## 4. Prompt Lookup Data (llm_system_prompts_lookup.csv)

| Column | Business Meaning | Used For |
|--------|------------------|----------|
| prompt_id | Prompt identifier | Primary Key |
| prompt_len | Prompt length | Prompt Analysis |
| instruction_template | Prompt template | Prompt Categorization |
| use_case | AI use case | Product Adoption |
| n_interactions | Prompt usage count | Popularity Analysis |
| n_sessions | Sessions using prompt | Engagement |
| n_users | Users using prompt | Adoption Analysis |
| instruction_len | Instruction length | Prompt Optimization |