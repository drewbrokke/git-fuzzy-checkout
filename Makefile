BIN_DIR=/usr/local/bin
MAKEFILE_DIR=$(shell pwd)

SOURCE_FILE=$(MAKEFILE_DIR)/git-fuzzy-checkout
TARGET_FILE=$(BIN_DIR)/git-fuzzy-checkout

install: link-scripts
.PHONY: install

uninstall: unlink-scripts
.PHONY: uninstall

format:
	shfmt --case-indent --write git-fuzzy-checkout
.PHONY: format

link-scripts: unlink-scripts
	sudo ln -s $(SOURCE_FILE) $(TARGET_FILE)

	sudo chmod 755 $(TARGET_FILE)
.PHONY: link-scripts

test:
	shellcheck git-fuzzy-checkout
.PHONY: test

unlink-scripts:
	sudo rm $(TARGET_FILE) 2>/dev/null || :
.PHONY: unlink-scripts