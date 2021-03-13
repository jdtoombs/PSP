FROM mcr.microsoft.com/mssql/rhel/server:2019-latest

RUN mkdir -p /usr/config
WORKDIR /usr/config
COPY . /usr/config

# Make sure GIT has the following permissions set.
RUN chmod 777 ./entrypoint.sh -R && \
    chmod 777 ./setup.sh -R

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 1433
VOLUME ["/var/opt/mssql"]
