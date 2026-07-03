#!/bin/bash

source .env

aws cloudformation delete-stack \
  --stack-name $STACK_NAME \
  --region $AWS_REGION