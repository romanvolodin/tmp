#!/bin/sh
echo "------> Generating google-credentials.json from Heroku config var"
echo $GOOGLE_CREDENTIALS > google-credentials.json
exec "$@"