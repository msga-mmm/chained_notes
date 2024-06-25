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
	# generate OpenAPI schema
	poetry run python manage.py spectacular --color --file chained_notes/infrastructure/api/schemas/openapi-schema.yml

	# format OpenAPI schema for consistent code diff
	make format

check-openapi-schema:
	make generate-openapi-schema

	git add chained_notes/infrastructure/api/schemas/openapi-schema.yml
	git diff --cached --exit-code -- chained_notes/infrastructure/api/schemas/openapi-schema.yml

check-migrations:
	poetry run python manage.py makemigrations --check

.PHONY: lint lint-fix format check-format check-types generate-openapi-schema check-openapi-schema check-migrations
