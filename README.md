# sql-server-linux-docker
sql-server-linux-docker

to prevent auto convert lf to crlf 
git config core.autocrlf false 

docker pull mcr.microsoft.com/dotnet/core/sdk:3.0.100-bionic

refer
https://docs.docker.com/compose/aspnet-mssql-compose/

just POC project, pass SAS password and connection string as environment variables

$env:SA_PASSWORD = "12345Abc%"
$env:ConnectionStrings__DefaultConnection = "Server=db;Database=master;User=sa;Password=$env:SA_PASSWORD;"

Alternatively
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/configuration/?view=aspnetcore-3.0#prefixes
$env:SQLCONNSTR_DefaultConnection = "Server=db;Database=master;User=SA;Password=$env:SA_PASSWORD;"


To list all environment variables
Get-ChildItem env:* | Sort-Object name
