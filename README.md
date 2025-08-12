# LocalStack

> [!WARNING]
> This repository is for study purposes only. No warranty is provided.

## Requirements

1. [LocalStack](https://app.localstack.cloud/sign-in) account for visual management of configured resources.

## Run Locally

1. Run Docker Compose to create the LocalStack container:

	```sh
	docker compose up -d
	```

2. Run the shell script as needed:
	
	- To create a sample queue:

		```sh
		chmod +x create-queue-sqs.sh \
		./create-queue-sqs.sh
		```
	
 	- To create a sample bucket:

		```sh
		chmod +x create-bucket-s3.sh \
		./create-bucket-s3.sh
		```

3. Open the [LocalStack](https://app.localstack.cloud/sign-in) web interface and access your SQS resource.

## Util AWS commands

1. To purge queue (erase all queue messages):

	```sh
	aws --profile localstack sqs purge-queue \
	--endpoint-url http://localhost:4566 \
	--queue-url sample-queue \
	--region us-east-1
	```