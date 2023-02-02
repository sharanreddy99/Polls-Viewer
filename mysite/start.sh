#!/bin/sh
echo "Waiting for mysql. This may take few more seconds ..."
until nc -z -v -w30 db 3306
do
    >&2 echo "Waiting for mysql. This may take few more seconds ..."
    sleep 10
done
echo "mysql connection established..."

source /polls_viewer_env/bin/activate
python manage.py migrate

if [ $CAN_ALLOW_DUMP != 0 ]
then
    python datagenerator.py executeFile ${DUMMY_DATA_FILENAME}
else
    echo 'dump is ignored as environment variable "CAN_ALLOW_DUMP" is set to 0';
fi

python manage.py runserver 0.0.0.0:8000