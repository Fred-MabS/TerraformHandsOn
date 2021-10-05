resource "random_integer" "unique_id" {
  min = 10000
  max = 100000
}

locals {
  suffix = random_integer.unique_id.result
  mabfactory = {
    rg_name  = join("-", ["rg", var.environment, local.suffix])
    location = var.location
  }
}
