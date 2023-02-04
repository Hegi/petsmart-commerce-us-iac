terraform {
  cloud {
    organization = "petsmart-commercetools-demo-by-valtech"

    workspaces {
      name = "petsmart-commerce-us-iac"
    }
  }
}

provider "commercetools" {
  client_id     = var.ct_client_id
  client_secret = var.ct_client_secret
  project_key   = var.ct_project_key
  scopes        = var.ct_scopes
  api_url       = var.ct_api_url
  token_url     = var.ct_token_url
}
