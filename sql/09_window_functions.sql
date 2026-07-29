USE llm_platform_analytics;

-- Window Functions

-- 1. ROW_NUMBER()
-- Assign a unique row number based on highest token usage.

SELECT
interaction_id,
user_id,
total_tokens,
ROW_NUMBER() OVER(ORDER BY total_tokens DESC) AS row_num
FROM llm_system_interactions;

-- 2. RANK()
-- Rank interactions by total tokens.

SELECT
interaction_id,
user_id,
total_tokens,
RANK() OVER(ORDER BY total_tokens DESC) AS token_rank
FROM llm_system_interactions;

-- 3. DENSE_RANK()

SELECT
interaction_id,
user_id,
total_tokens,
DENSE_RANK() OVER (ORDER BY total_tokens DESC) AS token_dense_rank
FROM llm_system_interactions;

-- 4. LAG()
-- Previous interaction latency

SELECT
    interaction_id,
    latency_ms,
    LAG(latency_ms) OVER (ORDER BY timestamp_utc) AS previous_latency
FROM llm_system_interactions;

-- 5. LEAD()
-- Next interaction latency

SELECT
    interaction_id,
    latency_ms,
    LEAD(latency_ms) OVER (ORDER BY timestamp_utc) AS next_latency
FROM llm_system_interactions;

-- 6. Running Total
-- Running total of platform cost

SELECT
    interaction_id,
    timestamp_utc,
    cost_usd,
    SUM(cost_usd) OVER (
        ORDER BY timestamp_utc
    ) AS running_total_cost
FROM llm_system_interactions;
