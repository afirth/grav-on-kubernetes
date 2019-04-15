dockerfile
install grav https://github.com/MaksymBilenko/docker-grav/blob/master/entrypoint.sh
from grav copy to bitnami container

config maps for nginx https://docs.bitnami.com/kubernetes/how-to/deploy-php-application-kubernetes-helm/

add nginx access logs


From 7-fpm-stretch
install nginx
copy site conf
copy php conf
unless grav:
install grav

if blank
install grav

take backup
update grav and plugins
flush cache

