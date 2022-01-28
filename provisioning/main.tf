provider "aws" {
    region	= var.region
    profile	= var.profile
}


output "hello" {
    description = "hello world example"
    value = "Hello world"
}

locals {
username = "My name is: ${var.name}"
}