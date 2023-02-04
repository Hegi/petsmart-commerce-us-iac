terraform {
  cloud {
    organization = "petsmart-commercetools-demo-by-valtech"

    workspaces {
      name = "petsmart-commerce-us-iac"
    }
  }
}

variable "ct_client_id" {
    description = "Commercetools provider config for ct_client_id."
    type = string
    default = ""
}
variable "ct_client_secret" {
    description = "Commercetools provider config for ct_client_secret."
    type = string
    default = ""
}
variable "ct_project_key" {
    description = "Commercetools provider config for ct_project_key."
    type = string
    default = ""
}
variable "ct_scopes" {
    description = "Commercetools provider config for ct_scopes."
    type = string
    default = ""
}
variable "ct_api_url" {
    description = "Commercetools provider config for ct_api_url."
    type = string
    default = ""
}
variable "ct_token_url" {
    description = "Commercetools provider config for ct_token_url."
    type = string
    default = ""
}


provider "commercetools" {
  client_id     = var.ct_client_id
  client_secret = var.ct_client_secret
  project_key   = var.ct_project_key
  scopes        = var.ct_scopes
  api_url       = var.ct_api_url
  token_url     = var.ct_token_url
}
