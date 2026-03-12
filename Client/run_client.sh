#!/bin/bash

source venv/bin/activate

echo "Using $ENV_USER as username"
echo "Backup server is $BACKUP_SERVER_IP"
echo "Running with $ENV_THREADS threads"

if [ -z $ENV_PASSWD ]; then
    echo "Password is empty"
else
    echo "Password given"
    echo "Starting dummy http server"
    python3 -m http.server 8080 &
fi

python3 client.py -U "$ENV_USER" -P "$ENV_PASSWD" -S http://aytchell.eu.pythonanywhere.com/ -T"$ENV_THREADS" -N1
