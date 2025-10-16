resource "aws_instance" "instances" {
  for_each = var.instances

  ami                         = var.ami_id
  instance_type               = each.value
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y nginx
              echo "<h1>${each.key} is Running</h1>" > /var/www/html/index.html
              systemctl start nginx
              EOF

  tags = { Name = each.key }
}