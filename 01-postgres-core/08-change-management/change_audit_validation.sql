-- Validate recent DDL activity
SELECT usename,
       query,
       query_start
FROM pg_stat_activity
WHERE query LIKE 'ALTER%'
   OR query LIKE 'CREATE%'
   OR query LIKE 'DROP%';

