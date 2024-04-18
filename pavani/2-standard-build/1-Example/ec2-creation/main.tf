resource "aws_instance" "ec2_instance" {
    ami = "ami-0cd59ecaf368e5ccf"
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.SG]
    tags = {Name = "HTTP_SERVER"}
    key_name = "scope"
    count = 1
}
