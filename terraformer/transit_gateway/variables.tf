data "terraform_remote_state" "subnet" {
  backend = "local"

  config = {
    path = "../../../generated/aws/subnet/terraform.tfstate"
  }
}

data "terraform_remote_state" "transit_gateway" {
  backend = "local"

  config = {
    path = "../../../generated/aws/transit_gateway/terraform.tfstate"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../../../generated/aws/vpc/terraform.tfstate"
  }
}

data "terraform_remote_state" "vpn_connection" {
  backend = "local"

  config = {
    path = "../../../generated/aws/vpn_connection/terraform.tfstate"
  }
}
