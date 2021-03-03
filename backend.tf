terraform {
  backend "remote" {
    organization = "alisdair-v2"
    workspaces {
      name = "alisdair-tfe-demo"
    }
  }
}
