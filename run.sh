#!/bin/sh

echo "Starting Voting System"

python manage.py makemigrations
python manage.py migrate
# Create superuser, ensure you change the password on admin portal
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@email.com', 'password')" | python manage.py shell

python manage.py runserver 0.0.0.0:8000