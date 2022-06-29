FROM python:3.8.13-slim

ENV DB_USER
ENV DB_PASS
ENV DB_HOST
ENV DB_PORT
ENV DB_NAME

WORKDIR /home/mlflow

RUN pip install mlflow

RUN mkdir mlruns

ENTRYPOINT ["mlflow", "server", "--backend-store-uri", "postgresql://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}"]