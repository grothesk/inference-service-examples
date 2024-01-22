#!/bin/bash
curl -X 'POST' \
  'http://sklearn-iris.kserve-test.kserve.minikube/v2/models/sklearn-iris/infer' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  --data @iris-input.json | jq
