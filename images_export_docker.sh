for img in $( docker images --format '{{.Repository}}:{{.Tag}}' --filter "dangling=false" ) ; do
    base=${img#*/}
    docker save "$img" | gzip > "${base//:/__}".tar.gz
done