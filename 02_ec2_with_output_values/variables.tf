variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI id"
  type        = string
  default     = "ami-0d191299f2822b1fa"
}

variable "ec2_instance_count" {
  description = "EC2 instance counb"
  type        = number
  default     = 1
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}