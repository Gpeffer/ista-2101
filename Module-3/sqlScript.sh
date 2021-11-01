#!/bin/bash

cat sqlStatements.sql | mysql -u garrypeffer -h mysql.ciazfzbygfyt.us-east-1.rds.amazonaws.com -pdefault_password > /home/garry/Documents/ista-2101/sqlStatementResult.md
