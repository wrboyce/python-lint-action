# python-lint-action

GitHub Action for python linting with `isort` and `black`.

## Usage

```
workflow "Lint on Push" {
  on = "push"
  resolves = ["Lint"]
}

action "Lint" {
  uses = "wrboyce/python-lint-action@master"
}
```
