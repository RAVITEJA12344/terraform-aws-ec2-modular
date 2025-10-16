provider "aws" {
  region = var.region
}

module "vpc" {
  source             = "./modules/vpc"
  region             = var.region
  vpc_name           = "App_VPC"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
}

module "sg" {
  source  = "./modules/security_group"
  sg_name = "App_SG"
  vpc_id  = module.vpc.vpc_id
}

module "ec2" {
  source     = "./modules/ec2"
  ami_id     = var.ami_id
  key_name   = var.key_name
  subnet_id  = module.vpc.public_subnet_id
  sg_id      = module.sg.sg_id
  instances  = {
    "App_Jenkins"       = "t2.micro"
    "App_Master_Node"   = "t2.micro"
    "App_Worker_Node-1" = "t2.micro"
    "App_Worker_Node-2" = "t2.micro"
    "App_SonarQube"     = "t2.micro"
  }
}