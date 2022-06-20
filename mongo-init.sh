#!/usr/bin/env bash
echo "Starting mongo-init.sh"
ret=$(mongo localhost:27017/admin -u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD --eval "db.getUser('"${MONGO_PYOS_USERNAME}"')" --quiet)
if [ "${ret}" == "null" ]; then
	mongo localhost:27017/admin -u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD --eval 'db = db.getSiblingDB("admin"); db.createUser({ user: "'${MONGO_PYOS_USERNAME}'", pwd: "'${MONGO_PYOS_PASSWORD}'", roles: [ "readWriteAnyDatabase" ]});';
        echo "${MONGO_PYOS_USERNAME} created"
fi
