#!/bin/sh
set -eu

curl -X POST -u "${{ secrets.PAT_USERNAME}}:${{secrets.PAT_TOKEN}}" -H "Accept: application/vnd.github.everest-preview+json"  -H "Content-Type: application/json" https://api.github.com/repos/$ENDPOINT_USER/$ENDPOINT_REPO/dispatches --data '{"event_type": "build_application"}'
