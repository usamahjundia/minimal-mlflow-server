#!/bin/bash
mlflow server\
    --backend-store-uri "postgresql://${POSTGRES_USER}:${POSTGRES_PASS}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}"\
    --default-artifact-root mlflow-artifacts:/home/mlflow/mlartifacts \
    --serve-artifacts \
    --host ${MLFLOW_HOST} \
    --port ${MLFLOW_PORT}