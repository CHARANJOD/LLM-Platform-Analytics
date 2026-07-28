-- JOIN
SELECT
    i.interaction_id,
    i.session_id,
    i.user_id,
    s.channel,
    s.country_code,
    s.region,
    s.account_tier,
    s.segment,
    u.primary_channel,
    u.primary_use_case
FROM llm_system_interactions AS i
INNER JOIN llm_system_sessions_summary AS s
    ON i.session_id = s.session_id
INNER JOIN llm_system_users_summary AS u
    ON i.user_id = u.user_id
LIMIT 10;