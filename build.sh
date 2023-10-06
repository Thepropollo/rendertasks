#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

[[ $CREATE_SUPERUSER ]];
then
  python rendertasks/manage.py createsuperuser --no-input
fi

python manage.py collectstatic --no-input
python manage.py migrate
