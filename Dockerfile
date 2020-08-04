FROM python:3.8-alpine

RUN apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev \
    && pip install --no-cache-dir  yandex-pgmigrate \
    && apk del --no-cache postgresql-dev gcc musl-dev .build-deps


ENTRYPOINT [ "pgmigrate" ] 

