#!/bin/sh

echo "[" `date` "] Checking for NodeJS"
echo ""
echo ""
echo ""
which node > /dev/null
if [ $? -gt 0 ];
then
    echo "ERROR :: NodeJS not found, please install it"
    exit 1
fi
echo "[" `date` "] NodeJS Installed, Installing EXPRESS now"


echo "[" `date` "] Checking for NPM"
echo ""
echo ""
echo ""

which npm > /dev/null
if [ $? -gt 0 ];
then
    echo "ERROR :: NPM not installed, please install it"
    exit 1
fi
echo "[" `date` "] NPM Installed"
echo "[" `date` "] Installing EXPRESS now"
sudo npm install -g express
sudo npm install -g express-generator
sudo npm install -g nodemon

# echo ""
# echo ""
# echo ""
# echo "[" `date` "] Generating API project"
# echo ""
# echo ""
# echo ""
# express app

echo ""
echo ""
echo ""
echo "[" `date` "] Initializing Express Project"
cd "app"
npm install -d

echo ""
echo ""
echo ""
echo "[" `date` "] To start application run './start.sh' or './start.sh 9000' with the port"