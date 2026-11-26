
# Note: us-east-1 does not use --create-bucket-configuration LocationConstraint
aws s3api create-bucket \
  --bucket esecure-power-tuning-tfstate \
  --region us-east-1

aws dynamodb create-table \
  --table-name esecure-power-tuning-tf-lock \
  --attribute-definitions AttributeName=LockID,AttributeType=S \
  --key-schema AttributeName=LockID,KeyType=HASH \
  --billing-mode PAY_PER_REQUEST \
  --region us-east-1
