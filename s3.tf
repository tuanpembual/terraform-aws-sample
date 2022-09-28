resource "aws_s3_bucket" "bucket_devops_cilsy" {
  bucket = "bucket-devops-cilsy"
  acl = "private"
  
  versioning {
    enabled = true
  }

  tags = {
    Name = "bucket-devops-cilsy"
  }
}
