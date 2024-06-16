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
	OPENAPI_SCHEMA_FILE_PATH="chained_notes/infrastructure/api/schemas/openapi-schema.yml"
	git diff --exit-code --quiet origin/main -- "$OPENAPI_SCHEMA_FILE_PATH"

.PHONY: lint lint-fix format check-format check-types generate-openapi-schema
