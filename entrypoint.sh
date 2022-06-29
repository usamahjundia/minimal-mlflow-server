#!/bin/bash
mlflow server\
 --backend-store-uri "postgresql://${POSTGRES_USER}:${POSTGRES_PASS}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}"\
 --default-artifact-root ./mlruns \
 --host ${MLFLOW_HOST} \
 --port ${MLFLOW_PORT}