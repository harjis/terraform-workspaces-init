resource "azurerm_resource_group" "this" {
  location = "westeurope"
  name     = "joonash-workspaces-init-${terraform.workspace}"

  tags = local.mandatory_tags
}
