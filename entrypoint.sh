#!/bin/sh -e

isort --version-number
isort --check-only --quiet

black --version
black --check .
