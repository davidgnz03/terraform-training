#########
###### Security Groups ########
########

resource "aws_security_group" "vpc-ssh-sg" {
  name        = "vpc-ssh-sg"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "Allow SSH inbound traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # WARNING this allow all internet inbound traffic, change it!
  }

  egress {
    description = "Allow SSH outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "vpc-web-sg" {
  name        = "vpc-web-sg"
  description = "Allow WEB inbound traffic"

  ingress {
    description = "Allow WEB inbound traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow WEB outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#########
###### EC2 instnaces ########
########

resource "aws_instance" "ec2-app" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  key_name      = "terraform-key"
  count         = var.ec2_instance_count
  user_data              = file("apache-install.sh")
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.vpc-ssh-sg.id, aws_security_group.vpc-web-sg.id]
  tags = {
    "Name" = "server-${count.index}"
  }
}