FROM mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04
EXPOSE 1433

COPY ./init-db.sh /
COPY ./create-db.sql /

USER root
RUN chmod +x ./init-db.sh
CMD  ./init-db.sh & /opt/mssql/bin/sqlservr 