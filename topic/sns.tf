resource "aws_sns_topic" "topic" {
  name = "${var.topic}"
}

variable "topic" {
  type    = "string"
  default = "dummy"
}
