# Slides

## Title

Inference Services on Kubernetes

## About me

* Cloud Technology Evangelist at Deepshore
* since 2019 at Deepshore
* founded the Analytics & ML Team
* Collaborator at MML@IKIM Essen
* main subjects:
    * Cloud Technology & Cloud Architecture
    * Life-Cycle-Management & Operations
    * Automation in Kubernetes
    * MLOps

## About Deepshore

* OMI: associated partner / technical rollout partner 
* KCSP, CNCF, IPAI
* main subjects:
    * Cloud Technology
    * Distributed Systems
    * R&D in the field of AI
* AI related work:
    * AI optimized operations 
    * anomaly detection based on IoT data
    * DeepLaw

## Goal of presentation

How to serve AI models in consideration of
* High Availability 
* Reliability
* BUT: Efficiency and Usability

## What is Kubernetes? 

"Kubernetes is a ...
* open-source
* container orchestration system
* for automating
* software deployment, 
* scaling,
* and management."

## Why Kubernetes?

* High Availability:
    * multiple nodes
    * pod replication
    * Self-Healing via automation
* Resource Efficiency:
    * Powerful Scheduling

Link: https://dzone.com/articles/kubernetes-advantages-and-disadvantages

## KServe: Model Inference Platform on Kubernetes

* highly scalable
* autoscaling
* performant
* **standardized inference protocol across ML frameworks**
* advanced deployment features

Link: https://kserve.github.io/website/0.11/

## InferenceService

InferenceServices
* provide Inference API ootb
* support multiple ML frameworks/Model Serving Runtimes
* support for obtaining models from different storage locations
* Autoscaling, incl. Scale-To-Zero

"Since your model is being deployed as an InferenceService, not a raw Kubernetes Service, you just need to provide the storage location of the model and it gets some super powers out of the box 🚀."

## Inference API (data plane protocol)

* Versions: v1 (REST) and v2 (REST, grpc)
* v2 corresponds to OIP: https://github.com/open-inference/open-inference-protocol

## Model Serving Runtimes

MSR: Applications providing/serving models efficiently and quickly

KServe supports
* TorchServe (Link: https://pytorch.org/serve/server.html)
* Triton Inference Server (Link: https://github.com/triton-inference-server/server)
* MLServer 
* custom MSR

## Model Storage

You can provide models on
* S3
* Azure Blob Storage
* URL
* PVC

## Hands-On

* k8s cluster by minikube
* KServe is already installed
* model classifies species of iris (see: https://en.wikipedia.org/wiki/Iris_flower_data_set)
* 

## Summary

* Kubernetes + KServe provides High Availability
* Kubernetes + KServe helps to utilize resources efficiently
* KServe makes Serving Models very easy (usability)
* KServe has features that improve reliability - but still work to be done

## Outlook

* Increase reliability by making use of GitOps
* Integration of FHIR resources in the Kubernetes-API 

# Final Slide

Thank you for your attention
