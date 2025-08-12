#!/bin/bash

export AWS_PROFILE=localstack
export AWS_DEFAULT_REGION=us-east-1

# Create sample queue
aws --profile localstack --endpoint-url=http://localhost:4566 sqs create-queue --queue-name sample-queue --region us-east-1
# Create sample dead-letter-queue
aws --profile localstack --endpoint-url=http://localhost:4566 sqs create-queue --queue-name sample-dlq --region us-east-1
# Set RedrivePolicy
aws --profile localstack sqs set-queue-attributes \
  --endpoint-url=http://localhost:4566 \
  --queue-url http://sqs.us-east-1.localhost.localstack.cloud:4566/000000000000/sample-queue \
  --attributes '{"RedrivePolicy": "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:000000000000:sample-dlq\",\"maxReceiveCount\":\"3\"}"} ' \
  --region us-east-1
