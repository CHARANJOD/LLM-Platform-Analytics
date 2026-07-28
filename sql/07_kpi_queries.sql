-- KPI Queries

-- KPI 1 – Total Users
SELECT COUNT(DISTINCT user_id) AS total_users
FROM llm_system_users_summary;

-- KPI 2 – Total Sessions
SELECT COUNT(session_id) AS total_sessions
FROM llm_system_sessions_summary;

-- KPI 3 – Total Interactions
SELECT COUNT(interaction_id) AS total_interactions
FROM llm_system_interactions;

-- KPI 4 – Total Tokens Consumed
SELECT SUM(total_tokens) AS total_tokens_consumed
FROM llm_system_interactions;

-- KPI 5 – Total Platform Cost
SELECT ROUND(SUM(cost_usd),2) AS total_platform_cost
FROM llm_system_interactions;

-- KPI 6 – Average Response Latency
SELECT ROUND(AVG(latency_ms),2) AS avg_latency_ms
FROM llm_system_interactions;

-- KPI 7 – Average Response Quality
SELECT ROUND(AVG(response_quality_score),2) AS avg_response_quality_score
FROM llm_system_interactions;

-- KPI 8 – Average Tokens per Interaction
SELECT ROUND(AVG(total_tokens),2) AS avg_tokens_per_interaction
FROM llm_system_interactions;

-- KPI 9 – Average Cost per Interaction
SELECT ROUND(AVG(cost_usd),4) AS avg_cost_per_interaction
FROM llm_system_interactions;

-- KPI 10 – Failure Rate
SELECT
ROUND(
COUNT(CASE WHEN failure_type <> 'none' THEN 1 END) * 100.0 /
COUNT(*),
2
) AS failure_rate_percentage
FROM llm_system_interactions;

-- KPI 11 – Tool Usage Rate
SELECT
ROUND(
COUNT(CASE WHEN tool_calls_count > 0 THEN 1 END) * 100.0 /
COUNT(*),
2
) AS tool_usage_rate
FROM llm_system_interactions;

-- KPI 12 – Toxicity Rate
SELECT
ROUND(
COUNT(CASE WHEN toxicity_flag='true' THEN 1 END) *100.0/
COUNT(*),
2
) AS toxicity_rate
FROM llm_system_interactions;

-- KPI 13 – Positive Feedback Rate
SELECT ROUND(AVG(user_feedback_score),2) AS avg_user_feedback_score
FROM llm_system_interactions;

-- KPI 14 – Average Tool Calls per Interaction
SELECT ROUND(AVG(tool_calls_count),2) AS avg_tool_calls
FROM llm_system_interactions;

-- KPI 15 - Average Tokens per Second
SELECT ROUND(AVG(tokens_per_second),2) AS avg_tokens_per_second
FROM llm_system_interactions;