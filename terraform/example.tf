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
  ami           = "ami-0be70fe886f1bdc4b" #"${data.aws_ami.web.id}"
  instance_type = "t2.medium"
  key_name      = "fenwick"
  vpc_security_group_ids = ["sg-0db204212259fa981"]
  subnet_id     = "subnet-3f880c59"
  iam_instance_profile =    "AWSCloudWatchAgent"

  user_data =<<EOT
#!/bin/sh
/opt/denyall/sbin/toManaged.sh
EOT

}
