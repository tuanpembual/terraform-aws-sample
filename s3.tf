resource "aws_s3_bucket" "bucket_devops_estu" {
  bucket = "bucket-devops-estu"
  acl = "private"
  
  versioning {
    enabled = true
  }

  tags = {
    Name = "bucket-devops-estu"
  }
}
