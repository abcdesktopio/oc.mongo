FROM mongo:4.4.14

ADD mongo-init.sh /docker-entrypoint-initdb.d/
