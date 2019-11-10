FROM mcr.microsoft.com/dotnet/core/sdk:3.0.100-bionic
EXPOSE 80/tcp
WORKDIR /app

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /bin/bash /entrypoint.sh
