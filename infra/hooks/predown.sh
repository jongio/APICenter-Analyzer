#!/bin/bash

# Load the azd environment variables
. ./infra/hooks/load_azd_env.sh

if [ -z "$GITHUB_WORKSPACE" ]; then
    # The GITHUB_WORKSPACE is not set, meaning this is not running in a GitHub Action
    DIR=$(dirname "$(realpath "$0")")
    "$DIR/login.sh"
fi
