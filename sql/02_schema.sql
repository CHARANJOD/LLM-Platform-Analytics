USE llm_platform_analytics;

ALTER TABLE llm_system_interactions
MODIFY interaction_id VARCHAR(20) NOT NULL;

ALTER TABLE llm_system_interactions
ADD PRIMARY KEY (interaction_id);

ALTER TABLE llm_system_prompts_lookup
MODIFY prompt_id VARCHAR(40) NOT NULL;

ALTER TABLE llm_system_prompts_lookup
ADD PRIMARY KEY (prompt_id);

ALTER TABLE llm_system_sessions_summary
MODIFY session_id VARCHAR(40) NOT NULL;

ALTER TABLE llm_system_sessions_summary
ADD PRIMARY KEY (session_id);

ALTER TABLE llm_system_users_summary
MODIFY user_id VARCHAR(40) NOT NULL;

ALTER TABLE llm_system_users_summary
ADD PRIMARY KEY (user_id);

SHOW KEYS FROM llm_system_interactions;

SHOW KEYS FROM llm_system_prompts_lookup;

SHOW KEYS FROM llm_system_sessions_summary;

SHOW KEYS FROM llm_system_users_summary;