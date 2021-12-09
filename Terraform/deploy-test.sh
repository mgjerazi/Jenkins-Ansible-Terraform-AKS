#!/bin/bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx --kubeconfig config-quiz-test
helm repo update --kubeconfig config-quiz-test
helm install ingress-nginx ingress-nginx/ingress-nginx --kubeconfig config-quiz-test
kubectl create namespace quiz --kubeconfig config-quiz-test
kubectl apply -f app/frontend.yml --namespace quiz --kubeconfig config-quiz-test
kubectl apply -f app/backend.yml --namespace quiz --kubeconfig config-quiz-test
kubectl apply -f app/ingress.yml --namespace quiz --kubeconfig config-quiz-test