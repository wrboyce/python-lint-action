FROM python:3-alpine

LABEL "com.github.actions.name"="Python Lint (isort/black)"
LABEL "com.github.actions.description"="Checks repository against isort & black"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/wrboyce/python-lint-action"
LABEL "homepage"="https://github.com/wrboyce/python-lint-action"
LABEL "maintainer"="Will Boyce <me@willboyce.com>"

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
