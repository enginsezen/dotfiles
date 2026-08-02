.PHONY: help bootstrap packages update fonts format lint check

help:
	@echo ""
	@echo "Available targets:"
	@echo ""
	@echo "  make bootstrap"
	@echo "  make packages"
	@echo "  make update"
	@echo "  make fonts"
	@echo "  make format"
	@echo "  make lint"
	@echo "  make check"
	@echo ""

bootstrap:
	bash scripts/bootstrap.sh

packages:
	bash scripts/packages.sh

update:
	bash scripts/update.sh

fonts:
	bash scripts/fonts.sh

format:
	shfmt -w scripts

lint:
	shellcheck -x scripts/bootstrap.sh
	shellcheck -x scripts/packages.sh
	shellcheck -x scripts/update.sh
	shellcheck -x scripts/fonts.sh
	shellcheck scripts/lib/common.sh

check: format lint
