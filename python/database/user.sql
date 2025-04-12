-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER habit_tracker_owner
WITH PASSWORD 'habittrackerpassword';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO habit_tracker_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO habit_tracker_owner;

CREATE USER  habit_tracker_appuser
WITH PASSWORD 'habittrackerpassword';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO habit_tracker_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO habit_tracker_appuser;