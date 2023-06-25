

#Provider

provider "aws" {
    region = "us-east-1"
    aws_access_key_id = ${{secrets.AWS_ACCESS_KEY}}
    aws_secret_key = ${{secrets.AWS_SECRET.KEY}}

}


# ec2 instance

resource "aws_instance" "rsaweb_vm"{
    ami = "ami-022e1a32d3f742bd8"
    instance_type = "t2.micro"

    tags = {
        Name = "Enjoy John"
    }
}

