FROM python:3.8.13-slim

ENV POSTGRES_USER=
ENV POSTGRES_PASSWORD=
ENV POSTGRES_HOST=
ENV POSTGRES_DB=
ENV POSTGRES_PORT=

WORKDIR /home/mlflow

RUN pip install psycopg2-binary mlflow

RUN mkdir mlruns
RUN mkdir mlartifacts
COPY ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]