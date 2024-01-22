# Slides

## Title

Inference Services on Kubernetes
Malte Groth

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
* Kubernetes Certified Service Provider (KCSP)
* Member of Cloud Native Computing Foundation
* Member of Innovation Park Artificial Intelligence
* main subjects:
    * Cloud Technology
    * Distributed Systems
    * R&D in the field of AI
* AI related work:
    * AI optimized operations 
    * anomaly detection based on IoT data
    * digital assistance for document management

## Goal of presentation

How to serve AI models in consideration of
* High Availability 
* Reliability 
* BUT ALSO: Efficiency and Usability

## What is Kubernetes? 

"Kubernetes (k8s) is a ...
* open-source
* container orchestration system
* for automating
* software deployment, 
* scaling,
* and management."

## Why Kubernetes?

* High Availability:
    * clusters consists of multiple nodes
    * k8s controllers enable service replication
    * k8s controllers provide self-healing mechanisms 
* Resource Efficiency:
    * k8s comes with a powerful scheduling 
 
Image: https://kubernetes.io/docs/concepts/architecture/ 
Link: https://dzone.com/articles/kubernetes-advantages-and-disadvantages

## KServe: Model Inference Platform on Kubernetes

KServe
* offers (auto)scaling, e.g. 
    * if number of requests increaes or 
    * if there is no load at all (Scale to zero)
* standardized inference protocol across ML frameworks
* simplifies model deployment

Link: https://kserve.github.io/website/0.11/

## InferenceService

InferenceServices
* provide Inference API 
* support multiple ML frameworks/Model Serving Runtimes 
* support for obtaining models from different storage locations
* Autoscaling, incl. Scale-To-Zero

"Since your model is being deployed as an InferenceService, not a raw Kubernetes Service, you just need to provide the storage location of the model and it gets some super powers out of the box 🚀."

## Hands-On

* k8s cluster by minikube
* KServe is already installed
* model classifies species of iris (see: https://en.wikipedia.org/wiki/Iris_flower_data_set)
* the model was already uploaded to MinIO

Image: https://en.wikipedia.org/wiki/Iris_flower_data_set#/media/File:Iris_dataset_scatterplot.svg

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

Models can be provided by
* S3
* Azure Blob Storage
* URL
* PVC

## Autoscaling

Autoscaling
* scales to zero if there is no request (given minReplicas is 0)
* scales up if more replicas are needed to handle the load

## Summary

* Kubernetes + KServe support High Availability (multiple nodes, replication, self-healing)
* Kubernetes + KServe help to utilize resources efficiently (scheduling, autoscaling)
* KServe makes Serving Models very easy --> Usability
* KServe has features that improve reliability (versionining, monitoring etc.)

## Outlook

* Perform Autoscaling on GPUs
* Increase reliability by making use of GitOps
* Integration of FHIR resources in the Kubernetes-API
* ...

# Final Slide

Thank you for your attention

Contact: malte.groth@deepshore.de
