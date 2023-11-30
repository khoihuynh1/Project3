kubectl delete deployment udagram-frontend
kubectl delete service udagram-frontend
kubectl delete service 
kubectl apply -f frontend-deployment.yaml 
kubectl apply -f frontend-service.yaml 
kubectl expose deployment udagram-frontend --type=LoadBalancer --name=publicfrontend
kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy

kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml

kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-feed-service.yaml

kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-user-service.yaml

kubectl delete deployment reverseproxy
kubectl delete service reverseproxy
kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml

kubectl delete deployment udagram-api-feed
kubectl delete service udagram-api-feed
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-feed-service.yaml

kubectl delete deployment udagram-api-user
kubectl delete service udagram-api-user
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-user-service.yaml

kubectl get deployments
kubectl get services 
kubectl get pods

kubectl logs [pod-name] -p