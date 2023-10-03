terraform {
  backend "s3" {
    bucket = "interview-project-dev-bucket-12345dsfgds"
    key    = "terraform/dev/"
    region = "us-east-12"
  }
}
#hello from tag
