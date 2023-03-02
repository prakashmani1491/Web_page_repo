provider "aws" {
  region = "us-east-2"
  access_key = "AKIAT4H3QWP7NEZLBM7R"
  secret_key = "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"
}
resource "aws_instance" "demo-instance" {
ami = "ami-00d883a1ee0640758"
instance_type = "t2.micro"
key_name = "apache"
count = "1"
ebs_block_device {
    device_name = "/dev/xvda"
       volume_size = 8
  }
  tags = {
Name = "Test_Instance"
  }
}
