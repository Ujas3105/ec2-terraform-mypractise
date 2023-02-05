resource "aws_instance" "mimi-instace" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "mimi-key"
  vpc_security_group_ids = ["sg-0d8b66798bebf8657"]
  tags = {
    Name    = "mimi-Instance"
    Project = "portfolio"
  }
}
