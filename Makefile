mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))

usage:
	@echo "usage:"
	@echo "  make install"
	@echo "  make update"

install:
	@echo "Install dotfiles..."
	@$(current_dir)./bin/install.sh

update:
	@echo "Update dotfiles..."
	@$(current_dir)./bin/update.sh
