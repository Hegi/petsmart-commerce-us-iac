terraform {
  required_providers {
    commercetools = {
      source  = "labd/commercetools"
      version = "1.6.8"
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

resource "commercetools_product_type" "pet-product-tf" {
  key         = "pet-product-tf"
  name        = "Pet Product via IaC"
  description = "This sample product is created and maintained via Terraform."

  attribute {
    name = "id"
    label = {
      en = "Id"
    }
    required = true
    type {
      name = "text"
    }
    constraint = "SameForAll"
  }

  attribute {
    name = "name"
    label = {
      en = "Name"
    }
    required = true
    type {
      name = "text"
    }
    constraint = "SameForAll"
  }

  attribute {
    name = "description"
    label = {
      en = "Description"
    }
    type {
      name = "text"
    }
    constraint = "SameForAll"
  }

  attribute {
    name = "colorName"
    label = {
      en = "Color Name"
    }
    type {
      name = "text"
    }
    constraint = "Unique"
  }
}

# resource "commercetools_product_type" "some-generic-properties-product-type" {
#   key         = "some-key"
#   name        = "Some generic product properties"
#   description = "All the generic product properties"
#   attribute {
#     name = "perishable"
#     label = {
#       en = "Is perishable"
#       nl = "Is perishable"
#     }
#     required = true
#     type {
#       name = "boolean"
#     }
#   }
# }

# resource "commercetools_product_type" "my-product-type" {
#   key         = "my-product-type-key"
#   name        = "Lens specification"
#   description = "All the specific info concerning the lens"

#   attribute {
#     name = "autofocus"
#     label = {
#       en = "Has autofocus"
#       nl = "Heeft autofocus"
#     }
#     required = true
#     type {
#       name = "boolean"
#     }
#   }

#   attribute {
#     name = "lens_product_no"
#     label = {
#       en = "Lens product number"
#       nl = "Objectief productnummer"
#     }
#     required = true
#     type {
#       name = "text"
#     }
#     constraint = "Unique"
#     input_tip = {
#       en = "Enter the product code"
#       nl = "Voer de product code in"
#     }
#     searchable = true
#   }

#   attribute {
#     name = "previous_model"
#     label = {
#       en = "Previous model"
#       nl = "Vorig model"
#     }
#     type {
#       name              = "reference"
#       reference_type_id = "product"
#     }
#   }

#   attribute {
#     name = "product_properties"
#     label = {
#       en = "Product properties"
#       nl = "Product eigenschappen"
#     }
#     required = false
#     type {
#       name           = "nested"
#       type_reference = commercetools_product_type.some-generic-properties-product-type.id
#     }
#   }

#   attribute {
#     name = "some-flag"
#     label = {
#       en = "Some flag"
#       nl = "Een vlag"
#     }
#     required = false
#     type {
#       name = "enum"
#       value {
#         key   = "FLAG-1"
#         label = "Flag 1"
#       }
#       value {
#         key   = "FLAG-2"
#         label = "FLAG-2"
#       }
#     }
#   }

#   attribute {
#     name = "origin"
#     label = {
#       en = "Origin country"
#       nl = "Land van herkomst"
#     }
#     required = false
#     type {
#       name = "set"
#       element_type {
#         name = "lenum"
#         localized_value {
#           key = "NL"
#           label = {
#             en = "Netherlands"
#             nl = "Nederland"
#           }
#         }
#         localized_value {
#           key = "DE"
#           label = {
#             en = "Germany"
#             nl = "Duitsland"
#           }
#         }
#       }
#     }
#   }
# }
