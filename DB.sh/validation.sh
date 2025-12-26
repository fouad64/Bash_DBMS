#!/usr/bin/env bash

validate_db_name() {
  local dbname="$1"
  local reserved_keywords=(
    select insert update delete create drop alter
    table from where join user database
  )

  if (( ${#dbname} > 64 )); then
    echo "Invalid: name is longer than 64 characters."
    return 1
  fi

  if [[ ! $dbname =~ ^[a-z] ]]; then
    echo "Invalid: name must start with a lowercase letter."
    return 1
  fi

  if [[ ! $dbname =~ ^[a-z0-9_]+$ ]]; then
    echo "Invalid: name can only contain lowercase letters, digits, and underscores."
    return 1
  fi

  for word in "${reserved_keywords[@]}"; do
    if [[ "$dbname" == "$word" ]]; then
      echo "Invalid: name is a reserved keyword."
      return 1
    fi
  done

  return 0
}