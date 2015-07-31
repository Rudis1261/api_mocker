#!/bin/sh
which node > /dev/null
if [ $? -gt 0 ];
then
    echo "ERROR :: NodeJS not found, please install it"
    exit 1
fi

which npm > /dev/null
if [ $? -gt 0 ];
then
    echo "ERROR :: NodeJS not installed, please install it"
    exit 1
fi

cd "app"
if [ -z "$1" ];
then
    app_port="3000"
else
    export PORT=$1
    app_port="${1}"
fi
echo "[" `date` "] Starting API Mocker, On Port:${app_port} (Ctr+C) to exit"
nodemon bin/www