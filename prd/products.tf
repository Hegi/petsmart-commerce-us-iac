resource "commercetools_product_type" "pet-product" {
  key         = "pet-product"
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
      name = "ltext"
    }

    constraint = "SameForAll"
  }

  attribute {
    name = "description"
    label = {
      en = "Description"
    }
    type {
      name = "ltext"
    }
    constraint = "SameForAll"
  }

  attribute {
    name = "colorName"
    label = {
      en = "Color Name"
    }
    type {
      name = "ltext"
    }
    constraint = "Unique"
  }
}
