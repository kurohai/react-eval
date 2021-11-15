#!/usr/bin/env bash


PROJECT_HOME=/mnt/data/code
PROD_DIR=/mnt/knas-data-01/production
KNAS_PROJECT_DIR="${PROD_DIR}/new-reaction"
ALGERNON_BIN="${PROJECT_HOME}/algernon/algernon"
LOG_DIR="${KNAS_PROJECT_DIR}/log"

# echo "PROJECT_HOME:  ${PROJECT_HOME}"


# without log paths explicit
"${ALGERNON_BIN}" \
    --verbose \
    --debug \
    --dev \
    --httponly \
    --dir="${KNAS_PROJECT_DIR}/build" \
    --server 0.0.0.0:3001
