output "instance_nic_consumable" {
  value = "${aws_network_interface.demo_nic.id}"
}
