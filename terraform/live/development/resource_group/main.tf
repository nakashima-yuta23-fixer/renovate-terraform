resource "azurerm_resource_group" "this" {
  name = format(
    var.resource_name_placeholder,
    "rg",
    var.product_name,
    var.env,
    var.region_code
  )
  location = var.location
}
