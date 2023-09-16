-- Create database
DROP DATABASE IF EXISTS olympics_19501204;
CREATE DATABASE olympics_19501204;

-- Use the newly created database
USE olympics_19501204;

-- Create tables for olympic database
\. createcountry.sql
\. createteam.sql
\. createathletes.sql
\. creategames.sql
\. createathleteparticipation.sql

-- Populate the above tables
\. inscountry.sql
\. insathletes.sql
\. insteam.sql
\. insgames.sql
\. insathpar.sql
