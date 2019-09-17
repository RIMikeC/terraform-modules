variable "queue_name" {
  description = "Optional name of queue to create"
  type        = "string"
  default     = "dummy"
}
variable "aws_region" {
  description = "Region in which to build"
  type        = "string"
}
