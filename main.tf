resource "aws_vpc" "mumbai_vpc" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = "mumbai_vpc"
  }
  depends_on = [ aws_ebs_volume.myebs_volume ]
}

resource "aws_ebs_volume" "myebs_volume" {
  availability_zone = var.availability_zone
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}
