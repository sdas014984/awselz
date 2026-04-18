

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}


variable "aws_region" {
  default = "ap-south-1"
}
