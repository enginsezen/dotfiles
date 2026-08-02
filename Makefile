.PHONY: bootstrap packages update lint format check

bootstrap:
	bash scripts/bootstrap.sh

packages:
	bash scripts/packages.sh

update:
	bash scripts/update.sh

lint:
	shellcheck -x scripts/bootstrap.sh
	shellcheck -x scripts/packages.sh
	shellcheck -x scripts/update.sh
	shellcheck scripts/lib/common.sh

format:
	shfmt -w scripts

check: format lint
