# actions-flutter-validate

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Inputs](#inputs)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

Performs checks against Dart and Flutter code to ensure the package does not have any analysis issues, failed tests, or improperly formatted code (as defined by `dart format`).

## Inputs

Name              | Default  | Description
------------------|----------|-------------
`channel`         | `stable` | Channel to pull for Dart / Flutter's SDK
`path`            | `.`      | Path for the package being validated


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
        uses: peiffer-innovations/actions-flutter-validate@v1
```

