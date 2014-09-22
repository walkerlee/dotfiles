function fish_set_boot2docker_share --description "Set boot2docker share folder"
	VBoxManage sharedfolder remove "boot2docker-vm" --name "Users" 2>/dev/null
	VBoxManage sharedfolder add "boot2docker-vm" --name "Users" --hostpath "/Users"
end
