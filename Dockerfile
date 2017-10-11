FROM rancher/server:v1.6.10

RUN systemctl stop mysql.service && rm -rf /var/lib/mysql

COPY ./initdb /var/lib/mysql

RUN chown -R 102:105 /var/lib/mysql
