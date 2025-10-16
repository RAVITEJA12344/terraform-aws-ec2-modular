variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID to use for EC2"
}

variable "key_name" {
  description = "AWS Key Pair Name"
}