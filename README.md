Run [geoevents](https://github.com/ngageoint/geoevents) in a Docker container.

1. `git clone https://github.com/ngageoint/geoevents.git`
2. `docker-compose build`
3. `docker-compose up -d db`
3. Pause for a few seconds to let Postgresql start and initialize database.
4. `docker-compose up web`
5. Visit `http://localhost:8000/`.

Note: If appropriate, replace `localhost` with the output
from `docker-machine ip` or `boot2docker ip`.
