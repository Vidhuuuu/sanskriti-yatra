USE ROLE ACCOUNTADMIN;

CREATE DATABASE IF NOT EXISTS SANSKRITI_YATRA_DB;
USE DATABASE SANSKRITI_YATRA_DB;
CREATE SCHEMA IF NOT EXISTS PUBLIC;
USE SCHEMA PUBLIC;

CREATE OR REPLACE API INTEGRATION sanskriti_yatra_integration
    API_PROVIDER = git_https_api
    API_ALLOWED_PREFIXES = ('https://github.com/Vidhuuuu/')
    ENABLED = true;

CREATE OR REPLACE GIT REPOSITORY sanskriti_yatra
    API_INTEGRATION = sanskriti_yatra_integration
    ORIGIN = 'https://github.com/Vidhuuuu/sanskriti-yatra';


GRANT USAGE ON DATABASE SANSKRITI_YATRA_DB TO USER vidhu;
GRANT USAGE ON SCHEMA SANSKRITI_YATRA_DB.PUBLIC TO USER vidhu;
GRANT USAGE ON INTEGRATION sanskriti_yatra_integration TO USER vidhu;
GRANT READ ON GIT REPOSITORY sanskriti_yatra TO USER vidhu;
GRANT WRITE ON GIT REPOSITORY sanskriti_yatra TO USER vidhu;
    
-- ls @sanskriti_yatra/branches/main;
