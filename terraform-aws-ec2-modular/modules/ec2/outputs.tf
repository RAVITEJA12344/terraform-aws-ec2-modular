output "instance_public_ips" {
  value = { for k, i in aws_instance.instances : k => i.public_ip }
}

output "instance_ids" {
  value = { for k, i in aws_instance.instances : k => i.id }
}