resource "aws_vpc" "demo_vpc" {
  cidr_block = "172.16.0.0/16"
  tags {
    Name = "fp_demo_vpc"
  }
}

resource "aws_subnet" "demo_subnet" {
  vpc_id = "${aws_vpc.demo_vpc.id}"
  cidr_block = "172.16.10.0/24"
  availability_zone = "us-east-1a"
  tags {
    Name = "fp_demo_subnet"
  }
}

resource "aws_network_interface" "demo_nic" {
  subnet_id = "${aws_subnet.demo_subnet.id}"
  private_ips = ["172.16.10.100"]
  tags {
    Name = "fp_primary_network_interface"
  }
}
