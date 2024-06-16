lint:
	poetry run pylint config chained_notes

format:
	# python code
	# TODO: solve formatting incompatibility between isort and black
	# poetry run isort config chained_notes
	poetry run black config chained_notes

	# yaml, json code
	npm run format

check-format:
	# python code
	# TODO: solve formatting incompatibility between isort and black
	# poetry run isort config chained_notes --check
	poetry run black config chained_notes --check

	# yaml, json code
	npm run check-format

check-types:
	poetry run pyright

.PHONY: lint format check-format check-types
