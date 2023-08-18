format:
	shfmt --case-indent --write git-fuzzy-checkout
.PHONY: format

test:
	shellcheck git-fuzzy-checkout
.PHONY: test