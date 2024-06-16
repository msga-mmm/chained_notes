lint:
	poetry run ruff check

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

.PHONY: lint format check-format check-types
