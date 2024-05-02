#follow these steps to set up ArgoCD on a local minikube

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml


#create loadbalancer
#kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

#OR portforward to 8080
kubectl port-forward svc/argocd-server -n argocd 8080:443

#get admin password
argocd admin initial-password -n argocd

#log in with user "admin" and password from the previous step
argocd login localhost:8080

#set up the application
argocd app create hailyeah -f Hailyeah_app.yaml 


