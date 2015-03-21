#!/bin/sh
gosu postgres postgres --single -E <<EOSQL
CREATE ROLE geoevents CREATEDB LOGIN PASSWORD 'geoevents'
CREATE DATABASE geoevents TEMPLATE template_postgis OWNER geoevents
EOSQL
