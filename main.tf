resource "aws_instance" "server14" {
  ami             = "ami-026b57f3c383c2eec"
  instance_type   = "t2.micro"
  availability_zone = "us-east-1a"
  key_name        = "utc-key"
  tags = {
    Name = "ec2_instance"
    Team = "Cloud Transformation"
    env  = "dev"
    Created-by : "Mohamed"
  }
  user_data = file("install.sh")
}
resource "aws_ebs_volume" "vol1" {
  availability_zone = aws_instance.server14.availability_zone
  size              = 20
  tags = {
    Name       = "terraform volume"
    Team       = "Cloud"
    created-by = "Terraform"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.vol1.id
  instance_id = aws_instance.server14.id
}
