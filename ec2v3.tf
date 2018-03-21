#Configure the AWS provider
provider "aws" {
  alias = "instance3"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-2"
}

#Configure the AWS EC2resource
resource "aws_instance" "instance3" {
  ami = "ami-0b1e356e"
  instance_type = "t2.micro"
  #availability_zone = "us-east-1a"
  #key_name = "key1"
  #security_groups = ["sg-d4b425a0"]
  #subnet_id = "subnet-2b059476" 
  tags {
    Name = "hostTerraform3"
  }
  
  lifecycle {
    ignore_changes = ["security_group"]
  }
}
