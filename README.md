# actions-flutter-validate

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Inputs](#inputs)
- [Example usage](#example-usage)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

Performs checks against Dart and Flutter code to ensure the package does not have any analysis issues, failed tests, or improperly formatted code (as defined by `dart format`).

This will also run the [Google Open Source Vulnerability](https://google.github.io/osv-scanner/) scanner to scan the package for vulnerabilities.

## Inputs

Name              | Default         | Description
------------------|-----------------|-------------
`channel`         | `stable`        | Channel to pull for Dart / Flutter's SDK
`flutter_version` | `any`           | Flutter version within the channel to use
`generate_code`   | `false`         | State whether or not to run the code generator before validating
`path`            | `.`             | Path for the package being validated
`serif_file`      | `results.sarif` | Name of the file emitted by the `osv-scanner` reporting engine


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
        uses: peiffer-innovations/actions-flutter-validate@v2
```

