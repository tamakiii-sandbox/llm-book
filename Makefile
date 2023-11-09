.PHONY: help install uninstall

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	.venv
	pip install fugashi
	pip install 'fugashi[unidic-lite]'

uninstall:
	rm -rv .venv

.venv:
	python -m poetry install
