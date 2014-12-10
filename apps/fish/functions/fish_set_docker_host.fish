function fish_set_docker_host --description "Set DOCKER_HOST variable"
	for cmd in (boot2docker shellinit 2>/dev/null)
		eval $cmd
	end
end
