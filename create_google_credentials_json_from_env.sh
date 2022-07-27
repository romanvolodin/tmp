#!/bin/sh
echo "------> Generating google-credentials.json from Heroku config var"
echo -n $GOOGLE_CREDENTIALS > google-credentials.json
echo "~~~~~~~~~~~~~~~~~~~~~"
cat google-credentials.json
echo "~~~~~~~~~~~~~~~~~~~~~"
exec "$@"