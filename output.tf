output "vpc_id_consumable" {
  value = "${aws_vpc.demo_vpc.id}"
  description = "This is the VPC ID for later use"
}

output "demo_subnet_id" {
  value = "${aws_subnet.demo_subnet.id}"
  description = "This is the Subnet ID for later use"
}

output "instance_nic_consumable" {
  value = "${aws_network_interface.demo_nic.id}"
  description = "The Network Interface for later use"
}
