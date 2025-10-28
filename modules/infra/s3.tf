resource "aws_s3_bucket" "daily_files" {
  bucket = "${var.project_name}-daily-files-allan"

  tags = {
    Name        = "${var.project_name}-daily-files-allan"
  }
}