#!/bin/bash

dotnet tool install --global dotnet-ef --version 3.0.0
#export PATH="$PATH:$HOME/.dotnet/tools/"
export PATH="$PATH:/root/.dotnet/tools"

set -e
run_cmd="dotnet run --urls http://*:80"

until dotnet ef database update; do
>&2 echo "SQL Server is starting up"
sleep 1
done

>&2 echo "SQL Server is up - executing command"
exec $run_cmd