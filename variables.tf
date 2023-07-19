variable "rg_name" {
  type        = string
  description = "Name of the resource group where the server will be created"
}

variable "location" {
  type        = string
  description = "Azure Location"
}

variable "postgre_flexible_server_name" {
  type        = string
  description = "Postgre Flexible server name"
}

variable "administrator_login" {
  type        = string
  description = "Postgre administrator login name"
}

variable "administrator_password" {
  type        = string
  description = "Postgre administrator login password"
}

variable "postgre_sku_name" {
  type        = string
  description = "Postgre SKU Name"
}

variable "postgre_version" {
  type        = string
  description = "Postgre Version"
}

variable "postgre_storage_mb" {
  type        = number
  description = "Storage size in MB"
}

variable "postgre_backup_retention_days" {
  type        = number
  default     = 7
  description = "Days of retention for backup"
}

variable "tags" {
  type        = map(any)
  description = "JSON with tags for this resource"
  default = {
    PrivateEndpoint = "Yes"
    NetworkZone     = "Extranet"
  }
}

variable "geo_redundant_backup_enabled" {
  type        = bool
  default     = false
  description = "geo_redundant_backup_enabled"
}

variable "subnet_id" {
  description = "The subnet where you want the database created. The subnet must be delegated to Microsoft.DBforPostgreSQL/flexibleServers."
  type        = string
  default     = null
}

variable "private_dns_zone_id" {
  type = string
}
