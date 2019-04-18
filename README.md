# grav-on-kubernetes
Running the Grav flat-file CMS on Kubernetes

* Alpine php-fpm container
* Alpine nginx container
* Grav dropped in by a onetime job (provided as a suspended cron-job for your one-time use, or for upgrades)
* Backed by an nfs disk (installed separately using the nfs helm chart)

Easily rubberstamp a new domain by creating another kustomize overlay

Deploy with `skaffold deploy` 
