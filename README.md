# LocalStack

Study purposes only.

> [!WARNING]
> This repository is for study purposes only. No warranty is provided.

## Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [LocalStack Account](https://app.localstack.cloud/sign-in)

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

### List queues

```sh
aws --profile localstack sqs list-queues \
--endpoint-url http://localhost:4566 \
--region us-east-1
```

### Get queue URL

```sh
aws --profile localstack sqs get-queue-url \
--endpoint-url http://localhost:4566 \
--queue-name sample-queue \
--region us-east-1
```

### Receive message

```sh
aws --profile localstack sqs receive-message \
--endpoint-url http://localhost:4566 \
--queue-url sample-queue \
--region us-east-1 \
--output json
```

### Purge queue

```sh
aws --profile localstack sqs purge-queue \
--endpoint-url http://localhost:4566 \
--queue-url sample-queue \
--region us-east-1
```
