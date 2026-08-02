.PHONY: bootstrap packages lint

bootstrap:
	bash scripts/bootstrap.sh

packages:
	bash scripts/packages.sh

lint:
	shellcheck -x scripts/bootstrap.sh
	shellcheck -x scripts/packages.sh
	shellcheck scripts/lib/common.sh

update:
	bash scripts/update.sh
