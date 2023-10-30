-- pgext--0.0.1.sql

-- Create the extension schema
CREATE SCHEMA pgext;

-- Create the SQL function
CREATE OR REPLACE FUNCTION pgext.add_one(integer)
RETURNS bigint AS 'pgext', 'add_one'
LANGUAGE C STRICT;

-- Grant execute permission to public (change to appropriate roles if needed)
GRANT EXECUTE ON FUNCTION pgext.add_one(integer) TO PUBLIC;
