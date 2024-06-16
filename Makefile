lint:
	poetry run ruff check

lint-fix:
	poetry run ruff check --fix

format:
	# python code
	poetry run ruff format

	# yaml, json code
	npm run format

check-format:
	# python code
	poetry run ruff format --check

	# yaml, json code
	npm run check-format

check-types:
	poetry run pyright

.PHONY: lint lint-fix format check-format check-types
