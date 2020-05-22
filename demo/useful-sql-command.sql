# https://docs.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-databases-transact-sql?view=sql-server-ver15#result-sets
exec sp_databases
go 

select db_name()
go


