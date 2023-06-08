resource "aws_s3_bucket" "backend" {
  bucket = "${var.Component}-${var.Environment}-backend-bucket"
  tags = {
    Component   = "${var.Component}"
    Environment = "${var.Environment}"
  }
}
