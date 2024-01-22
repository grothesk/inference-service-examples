#!/bin/bash
MODEL_NAME=sklearn-iris
INPUT_PATH=iris-input.json
SERVICE_HOSTNAME=$(kubectl -n kserve-test get inferenceservice $MODEL_NAME -o jsonpath='{.status.url}' | cut -d "/" -f 3)

./hey -z 30s -c 300 -m POST -host ${SERVICE_HOSTNAME} -D $INPUT_PATH http://sklearn-iris.kserve-test.kserve.minikube/v2/models/sklearn-iris/infer
