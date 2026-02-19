#!/bin/bash

source venv/bin/activate

echo "Using $ENV_USER as username"
echo "Running with $ENV_THREADS threads"

if [ -z $ENV_PASSWD ]; then
    echo "Password is empty"
else
    echo "Password given"
fi

python3 client.py -U "$ENV_USER" -P "$ENV_PASSWD" -S http://aytchell.eu.pythonanywhere.com/ -T"$ENV_THREADS" -N1
