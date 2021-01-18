ARG TAG=dev

FROM mongo:$TAG

ADD mongo-init.sh /docker-entrypoint-initdb.d/
