error()
{
    echo "[ERROR]:" "$1" "EXITING" 1>&2
    exit 1
}
warning()
{
    echo "[WARNING]:" "$1" 1>&2
}

output()
{
    echo "[OUTPUT]:" "$1" 1>&2
}

output "Deploying backend"
kubectl apply -f ./pods/backend.yaml

output "Deploying frontend"
kubectl apply -f ./pods/frontend.yaml

output "Delay NGINX start for 1 minute while frontend spins up"
sleep 1m

output "Deploying nginx"
kubectl apply -f ./pods/nginx.yaml