function fish_set_docker_host --description "Set DOCKER_HOST variable"
	set -gx DOCKER_HOST (boot2docker socket 2>/dev/null)
	set -gx DOCKER_CERT_PATH /Users/walkerlee/.boot2docker/certs/boot2docker-vm
	set -gx DOCKER_TLS_VERIFY 1
end
