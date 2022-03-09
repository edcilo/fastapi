#!/bin/sh

set -e

echo $(date '+%F %T.%3N %Z') "[fastApi] INFO: running start.sh"

env=${FASTAPI_ENV:-development}

if [ $env = 'production' ]
then
    echo $(date '+%F %T.%3N %Z') "[flask] INFO: running production environment"
    uvicorn app.main:app --host=0.0.0.0 --port=8000
else
    echo $(date '+%F %T.%3N %Z') "[fastApi] INFO: running development environment"
    uvicorn app.main:app --host=0.0.0.0 --port=8000 --reload
fi
