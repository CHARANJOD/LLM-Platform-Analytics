-- Aggregation Queries

-- Total Tokens by Channel
SELECT
    s.channel,
    SUM(i.total_tokens) AS total_tokens
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
ON i.session_id = s.session_id
GROUP BY s.channel
ORDER BY total_tokens DESC;

-- Requests by Country
SELECT
    s.country_code,
    COUNT(i.interaction_id) AS total_requests
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
ON i.session_id = s.session_id
GROUP BY s.country_code
ORDER BY total_requests DESC;

-- Total Tokens by Country
SELECT
    s.country_code,
    SUM(i.total_tokens) AS total_tokens
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
ON i.session_id = s.session_id
GROUP BY s.country_code
ORDER BY total_tokens DESC;

-- Total Tokens by Region
SELECT
    s.region,
    SUM(i.total_tokens) AS total_tokens
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
ON i.session_id = s.session_id
GROUP BY s.region
ORDER BY total_tokens DESC;

-- Total Tokens by Account Tier
SELECT
    s.account_tier,
    SUM(i.total_tokens) AS total_tokens
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
ON i.session_id = s.session_id
GROUP BY s.account_tier
ORDER BY total_tokens DESC;

-- Total Tokens by Segment
SELECT
    s.segment,
    SUM(i.total_tokens) AS total_tokens
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
ON i.session_id = s.session_id
GROUP BY s.segment
ORDER BY total_tokens DESC;

-- Average Cost by Channel
SELECT
    s.channel,
    ROUND(AVG(i.cost_usd),4) AS avg_cost
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
ON i.session_id = s.session_id
GROUP BY s.channel
ORDER BY avg_cost DESC;

-- Average Latency by Region
SELECT
    s.region,
    ROUND(AVG(i.latency_ms),2) AS avg_latency
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
ON i.session_id = s.session_id
GROUP BY s.region
ORDER BY avg_latency DESC;