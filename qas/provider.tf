terraform {
  cloud {
    organization = "petsmart-commercetools-demo-by-valtech"

    workspaces {
      name = "petsmart-commerce-us-iac"
    }
  }
}
