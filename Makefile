lint:
	poetry run pylint config chained_notes

format:
	poetry run isort config chained_notes
	poetry run black config chained_notes

check-format:
	poetry run isort config chained_notes --check
	poetry run black config chained_notes --check

.PHONY: lint format check-format