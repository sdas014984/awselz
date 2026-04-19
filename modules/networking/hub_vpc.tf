module "hub_vpc" {
  source = "../modules/vpc"

  name = "hub-vpc"
  cidr = "10.0.0.0/16"

  public_subnets  = ["10.0.1.0/24"]
  private_subnets = ["10.0.2.0/24"]
}
