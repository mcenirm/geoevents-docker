FROM python:2.7.9

RUN apt-get update
RUN apt-get autoremove -y

RUN apt-get install -y --no-install-recommends python-gdal
RUN rm -rf /var/lib/apt/lists/*

COPY cache/ /tmp/cache
COPY geoevents/geoevents/requirements.txt /tmp/requirements.txt
RUN pip install --no-index --find-links=file:///tmp/cache  -r /tmp/requirements.txt

RUN mkdir -p /usr/src/app
COPY geoevents/ /usr/src/app
COPY dev_settings.py /usr/src/app/dev_settings.py
COPY entrypoint.sh /usr/src/entrypoint.sh

WORKDIR /usr/src/app

EXPOSE 8000
ENTRYPOINT ["/bin/sh", "/usr/src/entrypoint.sh"]
