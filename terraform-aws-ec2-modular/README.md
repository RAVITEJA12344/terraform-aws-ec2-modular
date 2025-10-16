# Terraform AWS EC2 Modular Setup

This Terraform project provisions a complete AWS environment using modules:

- **VPC Module** → Creates VPC, Subnet, IGW, Route Table  
- **Security Group Module** → Creates SG with SSH, HTTP, HTTPS access  
- **EC2 Module** → Launches 5 EC2 instances (Jenkins, Master, Workers, SonarQube)

## Usage

```bash
terraform init
terraform plan
terraform apply -auto-approve
```

## Destroy Resources

```bash
terraform destroy -auto-approve
```