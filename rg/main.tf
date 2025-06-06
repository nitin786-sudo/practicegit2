resource "azurerm_resource_group" "rg" {
    for_each = var.rgname
  name     = each.value.name
  location = each.vaule.location
}