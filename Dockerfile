FROM rancher/server:v1.6.10

RUN apt-get update && apt-get purge -y mysql-server && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*
