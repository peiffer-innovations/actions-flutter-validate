#!/bin/sh

set -e

switch_working_directory() {
  echo "Switching to package directory"
  cd "$INPUT_PACKAGE_DIRECTORY"
}

validate_dart() {
  echo "Validate Dart"
  pub get
  pub run test
}

validate_flutter() {
  echo "Validate Flutter"
  flutter packages get
  flutter test
}

validate() {
  if "${INPUT_FLUTTER_PACKAGE}"; then
    validate_flutter
  else
    validate_dart
  fi
  dartanalyzer lib
  dart format --set-exit-if-changed lib test
}

switch_working_directory
validate
