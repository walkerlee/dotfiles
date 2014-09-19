function fish_set_docker_host --description "Set DOCKER_HOST variable"
	set -gx DOCKER_HOST (boot2docker socket 2>/dev/null)
end
