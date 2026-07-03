#!/bin/bash

source .env

aws cloudformation create-change-set \
  --stack-name "$STACK_NAME" \
  --change-set-name "$CHANGE_SET_NAME" \
  --change-set-type "$CHANGE_SET_TYPE" \
  --template-body file://packaged_pipeline.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --region "$AWS_REGION"