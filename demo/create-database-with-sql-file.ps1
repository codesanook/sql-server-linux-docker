# We need to stop/remove/run  
docker stop sqlserver; docker rm sqlserver

# Run with attach volumn
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=12345Abc%" -p 1401:1433 --name sqlserver -d -v "$pwd/demo:/demo"  mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04

# Test attached volumn
docker exec -it sqlserver bash
ls demo
exit

# Verify create-database.sql

# Execute SQL file and quit
# docker exec without -it & sqlcmd
docker exec sqlserver opt/mssql-tools/bin/sqlcmd -U sa -P 12345Abc% -i /demo/create-database.sql 

# Execute RAW SQL and quit
docker exec sqlserver opt/mssql-tools/bin/sqlcmd -U sa -P 12345Abc% -Q "exec sp_databases"

# https://docs.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-databases-transact-sql?view=sql-server-ver15#result-sets

# Get all sqlcmd options/help
docker exec sqlserver opt/mssql-tools/bin/sqlcmd

# https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility?view=sql-server-ver15#syntax