INFERENCE_COMPONENT ?= sklearn-s3
NAMESPACE = kserve-test

deploy-inference-service:
	kubectl apply -k deploy/${INFERENCE_COMPONENT}

undeploy-inference-service:
	kubectl delete -k deploy/${INFERENCE_COMPONENT}

test-inference-service:
	cd scripts && ./infer.sh

load-test-inference-service:
	cd scripts && ./infer-load.sh

watch-pods:
	kubectl -n ${NAMESPACE} get pods -w
