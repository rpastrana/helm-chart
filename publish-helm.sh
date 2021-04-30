#!/bin/bash
HPCC_DIR=/c/assignments/GIT/HPCC-Platform
[[ -z ${HPCC_DIR} ]] && HPCC_DIR=~/HPCC-Platform

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "$DIR"
#pushd $DIR/docs 2>&1 > /dev/null

echo "helm package ${HPCC_DIR}/dockerfiles/hpcc/"
helm package ${HPCC_DIR}/dockerfiles/hpcc/
echo "helm repo index . --url https://rpastrana.github.io/helm-chart"
helm repo index . --url https://rpastrana.github.io/helm-chart
