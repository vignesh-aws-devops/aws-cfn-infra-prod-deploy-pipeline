#!/bin/bash

source .env

aws cloudformation deploy \
  --template-file packaged_pipeline.yaml \
  --stack-name $STACK_NAME \
  --capabilities CAPABILITY_NAMED_IAM \
  --region $AWS_REGION