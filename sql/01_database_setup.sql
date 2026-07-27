CREATE DATABASE IF NOT EXISTS llm_platform_analytics;

USE llm_platform_analytics;

SHOW TABLES;

SELECT COUNT(*) FROM llm_system_interactions;

SELECT COUNT(*) FROM llm_system_prompts_lookup;

SELECT COUNT(*) FROM llm_system_sessions_summary;

SELECT COUNT(*) FROM llm_system_users_summary;

DESCRIBE llm_system_interactions;

DESCRIBE llm_system_prompts_lookup;

DESCRIBE llm_system_sessions_summary;

DESCRIBE llm_system_users_summary;