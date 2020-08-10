#!/bin/bash

# Open psql manager
printf "\033[32m[Debug]\t%s\n" "Check users."
if [ $(grep -c '^postgres:' /etc/passwd) -gt 0 ]; then
    # Some user added
    puser=`echo "$POSTGRES_USER"`
else
    # Default user
    puser='postgres'
fi
printf "\033[32m[Debug]\t%s\n" "Creating extension in default template."
psql -U $puser -d template1 -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";'
printf "\033[32m[Debug]\t%s\n\033[37m" "Process done!"