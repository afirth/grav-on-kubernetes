create cloudbuild
update php conf
add php fpm prometheus sidecar
add health checks
add ready checks
add health check to nfs server
fix rsync to use hash instead of atime for update
install git for gitsync

php healthy: ask for ping
php ready: check status
nginx healthy: ask for robots.txt
nginx ready: ??
