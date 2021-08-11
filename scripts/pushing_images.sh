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

output "Pushing stevenbourn/petclinic-fe to dockerhub"

if [[ ! "$(docker images -q stevenbourn/petclinic-fe:latest 2> /dev/null)" == "" ]]; then
    output "Image exists"
    docker push stevenbourn/petclinic-fe
fi

output "Pushing stevenbourn/petclinic-be to dockerhub"

if [[ ! "$(docker images -q stevenbourn/petclinic-be:latest 2> /dev/null)" == "" ]]; then
    output "Image exists"
    docker push stevenbourn/petclinic-be
fi

output "Pushing stevenbourn/nginx to dockerhub"

if [[ ! "$(docker images -q stevenbourn/nginx:latest 2> /dev/null)" == "" ]]; then
    output "Image exists"
    docker push stevenbourn/nginx
fi