.PHONY: help bootstrap packages update fonts format format-check lint check ci

help:
	@echo ""
	@echo "Available targets:"
	@echo ""
	@echo "  make bootstrap"
	@echo "  make packages"
	@echo "  make update"
	@echo "  make fonts"
	@echo "  make format"
	@echo "  make format-check"
	@echo "  make lint"
	@echo "  make check"
	@echo "  make ci"
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
	find scripts -type f -name "*.sh" -exec shellcheck -x {} \;

check: format lint

format-check:
	shfmt --diff scripts

ci: format-check lint
