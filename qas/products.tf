resource "commercetools_product_type" "pet-product" {
  key         = "pet-product"
  name        = "Pet Product"
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
    required = false
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

  attribute {
    name = "baseId"
    label = {
      en = "BaseID"
    }
    type {
      name = "text"
    }
    required = false
    constraint = "Unique"
  }

  attribute {
    name = "intendedPets"
    label = {
      en = "Intended Pet(s)"
    }
    required = false
    type {
      name = "enum"
      value {
        key   = "cats"
        label = "Cats"
      }
      value {
        key   = "dogs"
        label = "Dogs"
      }
      value {
        key   = "fish"
        label = "Fish"
      }
    }
    constraint = "SameForAll"
  }
}
