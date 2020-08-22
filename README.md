# actions-flutter-validate

Performs checks against Dart and Flutter code to ensure the package does not have any analysis issues, failed tests, or improperly formatted code (as defined by `dartfmt`).

## Inputs

Name      | Default | Description
----------|---------|-------------
`flutter` | `true`  | Determines if this is a Flutter or a Dart package; set to `false` if pure Dart.
`path`    | `.`     | Path for the package being validated


## Example usage

```yaml
name: Validate plugin

on:
  pull_request:
    branches: [main]

jobs:
  validate:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Validate
        uses: peiffer-innovations/actions-flutter-validate@v1.0.1
        with:
          flutter: false
```

