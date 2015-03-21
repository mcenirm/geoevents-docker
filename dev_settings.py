DATABASES = {
    'default': {
        'ENGINE': 'django.contrib.gis.db.backends.postgis',
        'NAME': 'geoevents',
        'USER': 'geoevents',
        'PASSWORD': 'geoevents',
        'HOST': 'db',
        'PORT': 5432,
    }
}
