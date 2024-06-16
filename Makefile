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

generate-openapi-schema:
	poetry run python manage.py spectacular --color --file chained_notes/infrastructure/api/schemas/openapi-schema.yml

check-openapi-schema:
	make generate-openapi-schema

	git add chained_notes/infrastructure/api/schemas/openapi-schema.yml
	git diff --cached --exit-code --quiet
	git diff --exit-code --quiet -- chained_notes/infrastructure/api/schemas/openapi-schema.yml

.PHONY: lint lint-fix format check-format check-types generate-openapi-schema
