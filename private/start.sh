#!/bin/bash

# example of script launcher for bash

#move it in application root and run ./start.sh

OPTS="--raw-logs"
#OPTS="$OPTS --release blaze-rc1"
DOMAINDEV="app_meteor.local"
DOMAINPRO="app_meteor.net"
DBNAME="kepler_skeleton"
SETS="settings.json"
PORT="127.0.0.1:3000"
#TODO UNIX_SOCKET_PATH

MYIP=$( hostname -i | cut -f1 -d' ')
export MONGO_URL="mongodb://localhost:27017/$DBNAME"
export MAIL_URL="smtp://localhost:25"

if [ $MYIP = '127.0.1.1' ]; then
	echo "START DEVELOPMENT MODE"
	export ROOT_URL="http://$DOMAINDEV"
	meteor --port $PORT --settings $SETS
else
	echo "START PRODUTION MODE"
	export ROOT_URL="http://$DOMAINPRO"
	meteor --port $PORT --settings $SETS --production
fi
