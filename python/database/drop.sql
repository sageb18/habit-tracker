-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'habit_tracker';

DROP DATABASE "habit_tracker";

DROP USER habit_tracker_owner;
DROP USER habit_tracker_appuser;