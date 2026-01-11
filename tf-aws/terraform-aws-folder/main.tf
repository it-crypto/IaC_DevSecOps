provider "aws" {
  region = "us-east-1"
}

module "module/s3" {
  source = "./modules/aws_S3_buckets"
  s3_name = "storage-bucket-0001"
}