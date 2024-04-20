# WeatherApp ArgoCD Deployment Repository

## Overview
This repository contains all necessary Kubernetes manifest files for the deployment of the Hailyeah WeatherApp via ArgoCD. It is intended for testing purposes and should be used in a local [minikube](https://minikube.sigs.k8s.io/docs/start/) environment.

## Contents
The repository includes the following Kubernetes manifests:
- Kubernetes deployment manifest for the WeatherApp application.
- Service manifest to expose WeatherApp as a NodePort service.
- ConfigMap containing the UI background settings for WeatherApp.
- ArgoCD user definition for a read-only user named "alice".

All files are pre-configured for a deployment with ArgoCD in a minikube environment.

## Comments
Ensure that you have minikube installed and running on your machine. To access the WeatherApp, expose the service using the command:
minikube service weatherapp-service

