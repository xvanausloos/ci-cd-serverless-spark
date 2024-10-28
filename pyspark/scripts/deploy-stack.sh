#!/usr/bin/env bash
set -e # failed fast. Exit script as soon as error occured. Prevent end less run  

#STACK_NAME=$1
STACK_NAME="ldisparkserverless"
REPO="xvanausloos/ci-cd-serverless-spark"
TEMPLATE_FILE="cloud-formation-stack-template.yaml"

if [ -z "$1" ]
  then
    echo "No STACK_NAME argument supplied"
    exit 1
fi

aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://$TEMPLATE_FILE \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=GitHubRepo,ParameterValue=${REPO} ParameterKey=CreateOIDCProvider,ParameterValue=true
    
