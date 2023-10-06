#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

[[ $CREATE_SUPERUSER ]];

python manage.py collectstatic --no-input
python manage.py migrate
