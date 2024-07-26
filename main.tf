provider "aws" {
  region = "us-east-1"
  access_key = "AKI-xyz-5H"
  secret_key = "VwL-xyz-wpw"
}
resource "aws_instance" "think" {
    ami = "ami-0xyzb"
    instance_type = "t2.micro"
  tags = {
   name: "single-instance"
  }
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
