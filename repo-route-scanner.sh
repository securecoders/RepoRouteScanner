#!/bin/bash
# This script will scan a repo for routes and output them to a json file for use in the route scanner

# Set the variables
REPO=$1
OUTPUT=$2

# If REPO or OUTPUT is not set, exit and display usage
if [ -z "$REPO" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: repo-route-scanner.sh <repo> <output>"
  exit 1
fi

# If semgrep is not installed, exit and display how to install
if ! command -v semgrep &> /dev/null
then
    echo "Semgrep is not installed. Please install it from https://semgrep.dev/docs/getting-started/installation/"
    exit 1
fi

# Check if the repo exists
if [ ! -d "$REPO" ]; then
  echo "The repo $REPO does not exist"
  exit 1
fi

# Run Semgrep using the routes ruleset
semgrep -f rules/routes.yml --json $REPO > $OUTPUT