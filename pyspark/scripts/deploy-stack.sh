#!/usr/bin/env bash

STACK_NAME=$1
REPO="xvanausloos/ci-cd-serverless-spark"
TEMPLATE_FILE="cloud-formation-stack-template.yaml"

if [ -z "$1" ]
  then
    echo "No STACK_NAME argument supplied"
    exit 1
  else
    echo "stack name provided $STACK_NAME"
fi

# delete existing buckets in us-east-1 having name gh-actions-serverless-spark-prod-583893076311


aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://$TEMPLATE_FILE \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=GitHubRepo,ParameterValue=${REPO} ParameterKey=CreateOIDCProvider,ParameterValue=true
    
