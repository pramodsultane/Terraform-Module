resource "azurerm_postgresql_flexible_server" "example" {
  name                = var.postgre_flexible_server_name
  resource_group_name = var.rg_name
  location            = var.location
  version             = var.postgre_version

  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password

  sku_name   = var.postgre_sku_name
  storage_mb = var.postgre_storage_mb

  delegated_subnet_id = var.subnet_id
  private_dns_zone_id = var.private_dns_zone_id

  backup_retention_days        = var.postgre_backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled

  tags = var.tags
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
