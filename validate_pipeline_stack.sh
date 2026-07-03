#!/bin/bash

source .env

aws cloudformation validate-template \
  --template-body file://pipeline.yaml \
  --region $AWS_REGION