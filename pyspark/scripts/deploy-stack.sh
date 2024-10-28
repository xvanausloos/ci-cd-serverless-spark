#!/usr/bin/env bash
set -e # failed fast. Exit script as soon as error occured. Prevent end less run  

# Make sure to replace the ParameterValue for GitHubRepo below
aws cloudformation create-stack \ 
    --region us-east-1 \ 
    --stack-name ldi_sparkdemo \ 
    --template-body file://./cloud-formation-stack-template.yaml \ 
    --capabilities CAPABILITY_NAMED_IAM \ 
    --parameters ParameterKey=GitHubRepo,ParameterValue=USERNAME/REPO ParameterKey=CreateOIDCProvider,ParameterValue=true