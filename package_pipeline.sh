#!/bin/bash

source .env

aws cloudformation package \
  --template-file pipeline.yaml \
  --s3-bucket $PACKAGE_BUCKET \
  --output-template-file packaged_pipeline.yaml \
  --region $AWS_REGION