#!/bin/bash
echo "[INFO] waiting five seconds to docker DNS to be stabilized"
FLASK_PORT=8000
WORKER_THREADS=4
CERT_LOC=/service/src/appkey.crt
KEY_LOC=/service/src/appkey.key

cd /service/src
echo "[INFO] starting Web Server"

gunicorn \
-b 0.0.0.0:$FLASK_PORT \
-w $WORKER_THREADS \
--certfile $CERT_LOC \
--keyfile $KEY_LOC \
--reload server:app
