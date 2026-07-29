USE llm_platform_analytics;

-- SQL Views for Dashboard KPIs

-- View 1 : Total Users
CREATE OR REPLACE VIEW vw_total_users AS
SELECT COUNT(DISTINCT user_id) AS total_users
FROM llm_system_users_summary;

-- View 2 : Total Sessions
CREATE OR REPLACE VIEW vw_total_sessions AS
SELECT COUNT(session_id) AS total_sessions
FROM llm_system_sessions_summary;

-- View 3 : Total Interactions
CREATE OR REPLACE VIEW vw_total_interactions AS
SELECT COUNT(interaction_id) AS total_interactions
FROM llm_system_interactions;

-- View 4 : Total Tokens
CREATE OR REPLACE VIEW vw_total_tokens AS
SELECT SUM(total_tokens) AS total_tokens
FROM llm_system_interactions;

-- View 5 : Total Platform Cost
CREATE OR REPLACE VIEW vw_total_platform_cost AS
SELECT ROUND(SUM(cost_usd),2) AS total_platform_cost
FROM llm_system_interactions;

-- View 6 : Average Latency
CREATE OR REPLACE VIEW vw_avg_latency AS
SELECT ROUND(AVG(latency_ms),2) AS avg_latency_ms
FROM llm_system_interactions;

-- View 7 : Failure Rate
CREATE OR REPLACE VIEW vw_failure_rate AS
SELECT
ROUND(
COUNT(CASE WHEN failure_type <> 'none' THEN 1 END)
*100.0/COUNT(*),
2
) AS failure_rate
FROM llm_system_interactions;

-- View 8 : Tool Usage Rate
CREATE OR REPLACE VIEW vw_tool_usage_rate AS
SELECT
ROUND(
COUNT(CASE WHEN tool_calls_count>0 THEN 1 END)
*100.0/COUNT(*),
2
) AS tool_usage_rate
FROM llm_system_interactions;

SHOW FULL TABLES
WHERE Table_type='VIEW';