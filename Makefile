.PHONY: install run lint format format-check typecheck fullcheck test fulltest precommit

install:
	pip install -r requirements.txt -r requirements-dev.txt

run:
	python lab1/lab1.py

lint:
	ruff check lab1

format:
	ruff format lab1
	ruff check lab1 --fix

format-check:
	ruff format --check lab1

typecheck:
	pyright

fullcheck: lint format-check typecheck

test:
	pytest

fulltest: fullcheck test

precommit:
	pre-commit install