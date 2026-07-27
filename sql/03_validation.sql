-- NULL Validation

SELECT
SUM(interaction_id IS NULL) AS interaction_id_nulls,
SUM(session_id IS NULL) AS session_id_nulls,
SUM(user_id IS NULL) AS user_id_nulls
FROM llm_system_interactions;

SELECT
SUM(prompt_id IS NULL) AS prompt_id_nulls
FROM llm_system_prompts_lookup;

SELECT
SUM(session_id IS NULL) AS session_id_nulls,
SUM(user_id IS NULL) AS user_id_nulls
FROM llm_system_sessions_summary;

SELECT
SUM(user_id IS NULL) AS user_id_nulls
FROM llm_system_users_summary;

-- Duplicate Validation

SELECT interaction_id, COUNT(*) AS duplicate_count
FROM llm_system_interactions
GROUP BY interaction_id
HAVING COUNT(*) > 1;

SELECT prompt_id, COUNT(*) AS duplicate_count
FROM llm_system_prompts_lookup
GROUP BY prompt_id
HAVING COUNT(*) > 1;

SELECT session_id, COUNT(*) AS duplicate_count
FROM llm_system_sessions_summary
GROUP BY session_id
HAVING COUNT(*) > 1;

SELECT user_id, COUNT(*) AS duplicate_count
FROM llm_system_users_summary
GROUP BY user_id
HAVING COUNT(*) > 1;

-- Check ID lengths before altering (documentation)

SELECT MAX(CHAR_LENGTH(prompt_id)) AS max_length
FROM llm_system_prompts_lookup;

SELECT MAX(CHAR_LENGTH(session_id)) AS max_length
FROM llm_system_sessions_summary;

SELECT MAX(CHAR_LENGTH(user_id)) AS max_length
FROM llm_system_users_summary;