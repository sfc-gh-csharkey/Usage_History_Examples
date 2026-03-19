# Usage History Examples

Snowflake provides usage views that have details on the credit usage, token consumption etc. These views can be used to determine Snowflake costs. 

The [Usage_History_Examples.sql](https://github.com/sfc-gh-csharkey/Usage_History_Examples/blob/main/Usage_History_Examples.sql) contain example queries using views for consumption on Cortex Agents, Cortex Search, Cortex Analyst, Cortex Code.

The following is a table of each view, the corresponding Snowflake service and level of aggregation.

| Snowflake Service     | Usage Views                                                                                                                                   | Level of Aggregation | 
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------|
| Cortex Agents         | [CORTEX_AGENT_USAGE_HISTORY](https://docs.snowflake.com/en/sql-reference/account-usage/cortex_agent_usage_history)                            | Per request          |
| Cortex Search         | [CORTEX_SEARCH_SERVING_USAGE_HISTORY](https://docs.snowflake.com/en/sql-reference/account-usage/cortex_search_serving_usage_history)          | Per hour             |
| Cortex Search         | [CORTEX_SEARCH_DAILY_USAGE_HISTORY](https://docs.snowflake.com/en/sql-reference/account-usage/cortex_search_daily_usage_history)              | Per day              |
| Cortex Analyst        | [CORTEX_ANALYST_REQUESTS_V](https://docs.snowflake.com/en/sql-reference/local/cortex_analyst_requests_v)                                      | Per request          |
| Cortex Analyst        | [CORTEX_ANALYST_USAGE_HISTORY](https://docs.snowflake.com/en/sql-reference/account-usage/cortex_analyst_usage_history)                        | Per hour             |
| AI SQL Functions      | [CORTEX_AISQL_USAGE_HISTORY](https://docs.snowflake.com/en/sql-reference/account-usage/cortex_aisql_usage_history)                            | Per request          |
| Cortex Code           | CORTEX_CODE_CLI_USAGE_HISTORY                                                                                                                 | Per request          |
| Snowflake Intelligence| [SNOWFLAKE_INTELLIGENCE_USAGE_HISTORY](https://docs.snowflake.com/en/sql-reference/account-usage/snowflake_intelligence_usage_history_view)   | Per request          |
