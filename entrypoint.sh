set -x
paver sync || exit $?
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'pass')" | python manage.py shell || exit $?
python -Wall manage.py runserver 0.0.0.0:8000
