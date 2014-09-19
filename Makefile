usage:
	@echo "usage:"
	@echo "  make install"
	@echo "  make update"

install:
	@echo "Install dotfiles..."
	@./install.sh

update:
	@echo "Update dotfiles..."
	@git pull
	@git submodule foreach git pull
