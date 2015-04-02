Run [geoevents](https://github.com/ngageoint/geoevents) in a Docker container.

1. `git clone -b port_1_8 https://github.com/mcenirm/geoevents.git`
1. `./refresh-requirements.bash`
1. `docker-compose build`
1. `docker-compose up -d db`
1. Pause for a few seconds to let Postgresql start and initialize database.
1. `docker-compose up web`
1. Visit `http://localhost:8000/`.

Note: If appropriate, replace `localhost` with the output
from `docker-machine ip` or `boot2docker ip`.
