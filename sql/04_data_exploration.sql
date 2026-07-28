USE llm_platform_analytics;

SELECT DATABASE();

SHOW TABLES;

DESCRIBE llm_system_interactions;

DESCRIBE llm_system_prompts_lookup;

DESCRIBE llm_system_sessions_summary;

DESCRIBE llm_system_users_summary;

SELECT interaction_id, session_id, user_id
FROM llm_system_interactions
LIMIT 5;

SELECT session_id, user_id
FROM llm_system_sessions_summary
LIMIT 5;

SELECT user_id
FROM llm_system_users_summary
LIMIT 5;

SELECT *
FROM llm_system_prompts_lookup
LIMIT 5;

