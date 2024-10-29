# ============================== #
# 環境情報
# ============================== #
// descriptionを詳細に記述する
variable "product_name" {
  type        = string
  description = "Product Name"
  # validation {
  #   condition     = length(var.product_name) == 6
  #   error_message = "Invalid product_name: The length must be 6."
  # }
}

variable "env" {
  type        = string
  description = "Environment"
  validation {
    condition     = contains(["dv", "st", "pr"], var.env)
    error_message = "Invalid env: The value must be dv, st, or pr."
  }
}

// TODO: 許可するリージョンコードを増やす
variable "region_code" {
  type        = string
  description = "Region Code"
  validation {
    condition     = contains(["je", "we", "ea", "se", "ues"], var.region_code)
    error_message = "Invalid region_code: The value must be je, we, ea, or se."
  }
}

// TODO: 許可するロケーションを増やす
variable "location" {
  type        = string
  description = "Location"
  validation {
    condition     = contains(["japaneast", "westeurope", "eastasia", "southeastasia", "eastus"], var.location)
    error_message = "Invalid location: The value must be japaneast, westeurope, eastasia, or southeastasia."
  }
}

variable "resource_name_placeholder" {
  type        = string
  description = "Default Resource Name Placeholder"
  default     = "%s-%s-%s-%s"
}
