resource "aws_instance" "server-inovatech" {
  ami                    = "ami-0a0e5d9c7acc336f1"
  instance_type          = "t2.micro"
  key_name               = "chave-projeto"
  vpc_security_group_ids = [aws_security_group.inovatech-sg.id]
  user_data              = file("script_prod.sh")
           
  tags = {
    Name = "server-inovatech"
  }
}

resource "aws_instance" "ec2_homolog" {
  ami           = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t2.micro"
  key_name               = "chave-projeto"
  vpc_security_group_ids = [aws_security_group.inovatech-sg.id]
  user_data              = file("script_homolog.sh")

  tags = {
    Name = "Ambiente-Homolog"
  }
}

resource "aws_instance" "ec2_teste" {
  ami           = "ami-0dc2d3e4c0f9ebd18"  # Amazon Linux 2 AMI
  key_name       = "chave-projeto"
  vpc_security_group_ids = [aws_security_group.inovatech-sg.id]
  user_data              = file("script_teste.sh")

  tags = {
    Name = "Ambiente-Teste"
  }
}
