FROM ghcr.io/osgeo/gdal:alpine-small-latest

RUN apk add --update --no-cache python3 \
	build-base \
	geos \
	libpq-dev \
	py3-pip \
	python3-dev \
	&& ln -sf python3 /usr/bin/python

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --break-system-packages

ADD . /app

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
