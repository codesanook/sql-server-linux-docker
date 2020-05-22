docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=12345Abc%" -p 1401:1433 --name sqlserver mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04


# addtional commands
docker ps --format "table {{.Id}}\t{{.Names}}\{{.Status}}"
