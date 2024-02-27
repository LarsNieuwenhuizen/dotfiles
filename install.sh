#!/usr/bin/env sh

set -eux

if ! command -v chezmoi &> /dev/null; then
    echo "chezmoi is not installed. Please install it before continuing."
    exit 1
fi

chezmoi init --apply larsnieuwenhuizen
