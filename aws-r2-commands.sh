#!/bin/bash
# AWS CLI commands for R2 (Cloudflare)
# Usage: source this file or run: . ./aws-r2-commands.sh

export AWS_ACCESS_KEY_ID="R2_ACCESS_KEY_ID"
export AWS_SECRET_ACCESS_KEY="R2_SECRET_ACCESS_KEY"
export AWS_DEFAULT_REGION="auto"
export R2_ENDPOINT="https://CF_ACCOUNT_ID.r2.cloudflarestorage.com"
export BUCKET_NAME="moltbot-data"

# List buckets
# aws s3 ls --endpoint-url "$R2_ENDPOINT"

# List objects in moltbot-data
aws s3 ls s3://${BUCKET_NAME}/ --recursive --endpoint-url "$R2_ENDPOINT"

# Delete all objects in moltbot-data
aws s3 rm s3://${BUCKET_NAME}/ --recursive --endpoint-url "$R2_ENDPOINT"

# Upload file
# aws s3 cp ./local-file s3://moltbot-data/path/to/dest --endpoint-url "$R2_ENDPOINT"

# Sync local dir to R2
# aws s3 sync ./local-dir s3://moltbot-data/remote-path/ --endpoint-url "$R2_ENDPOINT"

wrangler r2 bucket delete ${BUCKET_NAME}
