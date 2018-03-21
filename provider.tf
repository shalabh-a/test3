#Declaring variable
variable "access_key" {}
variable "secret_key" {}

#Configure the AWS provider
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-1"
}
