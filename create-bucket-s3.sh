#!/bin/bash

export AWS_PROFILE=localstack
export AWS_DEFAULT_REGION=us-east-1

# Create sample bucket
aws --profile localstack --endpoint-url=http://localhost:4566 s3 mb s3://sample-bucket --region us-east-1
