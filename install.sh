#!/bin/sh

echo "[" `date` "] Detecting NodeJS Installation"
echo ""
echo ""
echo ""

which node > /dev/null
if [ $? -gt 0 ];
then
    echo "ERROR :: NodeJS not installed, can't continue!"
    exit 1
fi
echo "[" `date` "] NodeJS Installed, Installing EXPRESS now"
sudo npm install -g express
sudo npm install -g express-generator

echo ""
echo ""
echo ""
echo "[" `date` "] Generating API project"
echo ""
echo ""
echo ""
express app

echo ""
echo ""
echo ""
echo "[" `date` "] Initializing Express Project"
cd "app"
npm install -d

echo ""
echo ""
echo ""
echo "[" `date` "] Starting Application (Ctr+C) to exit"
npm start