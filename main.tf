
# we will create the ec2 instance here and define the provider here using the variables to authenticate via github
# S3 bucket to store our Terraform state file

//terraform {
  //required_providers {
    //aws = {
      //source = "hashicorp/aws"
       //version = "~>5.0"
       //}
  //}
//   backend "s3"{
 //   key = "aws/ec2-deploy/terraform.tfstate"
//}
//}


#Provider

provider "aws" {
    region = var.region
}


# ec2 instance

resource "aws_instance" "rsaweb_vm"{
    ami = "ami-022e1a32d3f742bd8"
    instance_type = "t2.micro"

    tags = {
        Name = "Enjoy John"
    }
}

