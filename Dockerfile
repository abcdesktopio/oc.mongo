FROM mongo

ADD mongo-init.sh /docker-entrypoint-initdb.d/
