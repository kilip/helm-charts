#!/bin/bash
changed=$(ct list-changed --target-branch main)
if [[ -n "$changed" ]]; then
    echo "changed=true" >> "$GITHUB_OUTPUT"
fi
