export PY_COLORS = 1
export PYTHONIOENCODING = UTF-8
export LC_CTYPE = en_US.UTF-8
export LANG = en_US.UTF-8

INSTALL_POETRY ?= true
POETRY_BIN ?= poetry
POETRY_RUNNER ?= poetry run

install-deps:
	$(POETRY_BIN) install
.PHONY: install-deps

install-poetry:
ifeq ($(INSTALL_POETRY),true)
	sudo sh contrib/poetry-bin/install.sh
else
	@echo "Poetry installation disabled by global variable! Exiting..."
	@exit 0
endif
.PHONY: install-poetry

### Git
hooks:
	$(POETRY_RUNNER) pre-commit install
	$(POETRY_RUNNER) pre-commit autoupdate
.PHONY: hooks
