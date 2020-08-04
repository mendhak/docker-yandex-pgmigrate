FROM python:stretch

RUN apt-get -y update && apt-get install -y --no-install-recommends libpq-dev \
  && pip install psycopg2-binary yandex-pgmigrate \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["pgmigrate"]