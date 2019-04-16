dockerfile
install grav https://github.com/MaksymBilenko/docker-grav/blob/master/entrypoint.sh
from grav copy to bitnami container

config maps for nginx https://docs.bitnami.com/kubernetes/how-to/deploy-php-application-kubernetes-helm/


use kustomize
add nfs volume
fix config map to use real service
publish docker image
create cloudbuild
install grav
update php conf
update nginx sec conf
check access logs
add php fpm prometheus sidecar
