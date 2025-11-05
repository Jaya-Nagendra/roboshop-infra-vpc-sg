module "vpc" {
  #source = "../terraform-aws-vpc-advanced"        # here its reffering from localhost
  source = "git::git@github.com:Jaya-Nagendra/terraform-aws-vpc-advanced.git"     # by using this we can reffer from github       
  project_name = var.project_name # insted of hard code we are keeping in variables.tf
  cidr_block = var.cidr_block
  common_tags = var.common_tags
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr
}