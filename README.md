# terraform-aws-sample

## Prepare S3 Bucket for TF State

```
aws s3 mb s3://estu-tfstate \
  --profile estu \
  --region ap-southeast-1

aws s3api put-public-access-block \
  --bucket estu-tfstate \
  --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true" \
  --profile estu \
  --region ap-southeast-1

aws s3api put-bucket-versioning \
  --bucket estu-tfstate \
  --versioning-configuration "Status=Enabled" \
  --profile estu \
  --region ap-southeast-1
```

## How to use

```
terraform init

terraform plan

terraform apply #type yes for approvement
```
