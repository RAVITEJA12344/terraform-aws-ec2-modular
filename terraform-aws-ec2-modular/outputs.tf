output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "sg_id" {
  value = module.sg.sg_id
}

output "instance_public_ips" {
  value = module.ec2.instance_public_ips
}