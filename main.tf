provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "demo_vpc" {
  cidr_block = "${var.vpc_cidr_block}"

  tags {
    Name = "fp_demo_vpc"
  }
}

resource "aws_subnet" "demo_subnet" {
  vpc_id            = "${aws_vpc.demo_vpc.id}"
  cidr_block        = "${var.subnet_cidr_block}"
  availability_zone = "${var.subnet_availability_zone}"

  tags {
    Name = "fp_demo_subnet"
  }
}

resource "aws_network_interface" "demo_nic" {
  subnet_id   = "${aws_subnet.demo_subnet.id}"
  private_ips = ["${var.nic_private_ips}"]

  tags {
    Name = "fp_primary_network_interface"
  }
}
