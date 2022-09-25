<!-- BEGIN_TF_DOCS -->
# Serial over LAN Policy Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources. Resources can be destroyed with `terraform destroy`.

### main.tf
```hcl
module "serial_over_lan" {
  source  = "terraform-cisco-modules/policies-serial-over-lan/intersight"
  version = ">= 1.0.1"

  baud_rate    = 115200
  com_port     = "com0"
  description  = "default Serial over LAN Policy."
  enabled      = true
  name         = "default"
  organization = "default"
  ssh_port     = 2400
}
```

### provider.tf
```hcl
terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">=1.0.32"
    }
  }
  required_version = ">=1.3.0"
}
```

### variables.tf
```hcl
variable "apikey" {
  description = "Intersight API Key."
  sensitive   = true
  type        = string
}

variable "endpoint" {
  default     = "https://intersight.com"
  description = "Intersight URL."
  type        = string
}

variable "secretkey" {
  description = "Intersight Secret Key."
  sensitive   = true
  type        = string
}
```
<!-- END_TF_DOCS -->