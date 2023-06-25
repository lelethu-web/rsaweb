

#Provider

provider "aws" {
    region = "us-easti"

}


# ec2 instance

resource "aws_instance" "rsaweb_vm"{
    ami = "ami-022e1a32d3f742bd8"
    instance_type = "t2.micro"

    tags = {
        Name = "Enjoy John"
    }
}

