resource "aws_s3_bucket" "backend" {
  bucket = "${Component}-${Environment}-backend-bucket"
  tags = {
    Component   = "${Component}"
    Environment = "${Environment}"
  }
}
