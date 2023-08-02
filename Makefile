.PHONY: help install uninstall

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	.venv

uninstall:
	rm -rv .venv

.venv:
	python -m poetry install
