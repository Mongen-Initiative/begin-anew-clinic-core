FROM python:3.9.7 as base

FROM base as builder 
RUN mkdir /install
RUN apt-get update && apt-get install -y gcc g++ musl-dev
WORKDIR /install
COPY requirements.txt /requirements.txt
RUN pip install --prefix=/install -r /requirements.txt

FROM base
COPY --from=builder /install /usr/local
RUN pip install alembic python-dateutil celery
RUN apt-get update && apt-get install -y libpq-dev
ADD . /app
WORKDIR /app
EXPOSE 3000
CMD ["./start_service.sh"]
