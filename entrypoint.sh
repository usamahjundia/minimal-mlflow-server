#!/bin/bash
mlflow server\
    --backend-store-uri "postgresql://${POSTGRES_USER}:${POSTGRES_PASS}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}"\
    --serve-artifacts \
    --artifacts-destination "file:///home/mlflow/mlartifacts" \
    --host ${MLFLOW_HOST} \
    --port ${MLFLOW_PORT}