# grav-on-kubernetes
Running the Grav flat-file CMS on Kubernetes

* Alpine php-fpm container
* Alpine nginx container
* Grav dropped in by a onetime job (provided as a suspended cron-job for your one-time use, or for upgrades)
* Backed by an nfs disk (installed separately using the nfs helm chart)

Easily rubberstamp a new domain by creating another kustomize overlay

Deploy with `skaffold deploy` 

## Initializing Grav

Since the nodes can be prempted, you need to initialize the webroot once with grav. No point building all that data into the php image, so we use another container `grav-init` and run it as a job

`kubectl create job --from=cronjob/grav-init grav-init -n <NAMESPACE>`

(takes awhile)
