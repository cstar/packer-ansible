provider "aws" {
  region     = "eu-west-1"
}

data "aws_ami" "web" {
  most_recent      = true
  owners           = ["self"]
  filter {
    name = "tag:role"
    values = ["webserver"]
  }
}

resource "aws_instance" "example" {
  ami           = "${data.aws_ami.web.id}"
  instance_type = "a1.medium"
  key_name      = "fenwick"
  vpc_security_group_ids = ["sg-0db204212259fa981"]
  subnet_id     = "subnet-3f880c59"
  iam_instance_profile =    "AWSCloudWatchAgent"
}
