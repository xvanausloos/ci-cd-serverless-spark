LDI code created on 27/10/24 for 
https://community.aws/content/2iCjIdkuXITFOpZBoXeiFdNeQhd/deploy-serverless-spark-jobs-to-aws-using-github-actions

Infra: create the stacks thanks to AWS CLOUD FORMATION using the file `cloud-formation-template.yaml``

NB: only in `us-east-1` availability zone.

`./deploy-stack.sh <STACK°NAME>`

For instance :
`./deploy-stack.sh "ldistack100" `

For deleting the stack:
` aws cloudformation delete-stack --stack-name toot `

Update settings in `integration-tests.yaml`


