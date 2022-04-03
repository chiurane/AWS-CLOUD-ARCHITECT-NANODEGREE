# TODO: Designate a cloud provider, region, and credentials
terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
}
provider "aws" {
    profile = "default"
    access_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX""
    region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
#resource "aws_instance" "micro_app_server" {
#    count = 4 # create four similar instances
#    ami = "ami-0742b4e673072066f"
##    instance_type = "t2.micro"
#    vpc_security_group_ids = ["sg-0a2df886f09ed1f54"]
#    subnet_id = "subnet-077d1d643f99e4dc1"
#    tags = {
#      Name = "Udacity T2"
#  }
#}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
#resource "aws_instance" "large_app_server" {
#    count = 2 # create 2 similar instances
#    ami = "ami-0742b4e673072066f"
#    instance_type = "m4.large"
#    vpc_security_group_ids = ["sg-0a2df886f09ed1f54"]
#    subnet_id = "subnet-077d1d643f99e4dc1"
#    tags = {
#      Name = "Udacity M4"
#  }
#}

