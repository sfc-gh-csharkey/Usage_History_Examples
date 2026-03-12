--
-- Cortex Agents
-- 1. Per request usage | https://docs.snowflake.com/en/sql-reference/account-usage/cortex_agent_usage_history
--

-- All feilds (per request)
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_AGENT_USAGE_HISTORY;

-- Token usage for a specific request including invokation of Cortex Analyst
SELECT
    REQUEST_ID,
    TOKENS,
    TOKENS_GRANULAR
FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_AGENT_USAGE_HISTORY
WHERE REQUEST_ID = '<request_id>'; -- ex. 9e59c7ee-e2c5-4f7e-a837-72358d2385e0

--
-- Cortex Search
-- 1. Hourly usage | http://docs.snowflake.com/en/sql-reference/account-usage/cortex_search_serving_usage_history
-- 2. Daily usage  | https://docs.snowflake.com/en/sql-reference/account-usage/cortex_search_daily_usage_history
--

-- All feilds (per hour)
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_SEARCH_SERVING_USAGE_HISTORY;

-- All feilds (per day)
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_SEARCH_DAILY_USAGE_HISTORY;

-- Credit usage for a specific search service by DAY
SELECT
    USAGE_DATE,
    SERVICE_NAME,
    CONSUMPTION_TYPE,
    CREDITS
FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_SEARCH_DAILY_USAGE_HISTORY
WHERE SERVICE_NAME = '<name_of_search_serivce>' -- ex. NEWS_ARTICLES_SEARCH_INDEX
ORDER BY USAGE_DATE DESC;

--
-- Cortex Analyst
-- 1. Per request usage | https://docs.snowflake.com/en/sql-reference/local/cortex_analyst_requests_v
-- 2. Hourly usage      | https://docs.snowflake.com/en/sql-reference/account-usage/cortex_analyst_usage_history
-- 

-- All feilds (per request)
SELECT * FROM SNOWFLAKE.LOCAL.CORTEX_ANALYST_REQUESTS_V;

-- All feilds (per hour)
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_ANALYST_USAGE_HISTORY;

-- 
-- AI SQL Functions
-- 1. Per request uasage | https://docs.snowflake.com/en/sql-reference/account-usage/cortex_aisql_usage_history
--

-- All feilds (per request)
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_AISQL_USAGE_HISTORY;

--
-- Cortex Code
-- 

-- All feilds (per request)
SELECT * FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_CODE_CLI_USAGE_HISTORY;

-- Credits consumed per user, per day
SELECT
    u.NAME AS user_name,
    DATE_TRUNC('day', c.USAGE_TIME) AS usage_date,
    SUM(c.TOKEN_CREDITS) AS total_credits
FROM SNOWFLAKE.ACCOUNT_USAGE.CORTEX_CODE_CLI_USAGE_HISTORY c
JOIN SNOWFLAKE.ACCOUNT_USAGE.USERS u ON c.USER_ID = u.USER_ID
GROUP BY 1, 2
ORDER BY 2 DESC;
