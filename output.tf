output "vpc_id_consumable" {
  value = "${aws_vpc.demo_vpc.id}"
}

output "demo_subnet_id" {
  value = "${aws_subnet.demo_subnet.id}"
}

output "instance_nic_consumable" {
  value = "${aws_network_interface.demo_nic.id}"
}
