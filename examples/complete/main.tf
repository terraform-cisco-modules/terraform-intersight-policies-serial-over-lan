module "serial_over_lan" {
  source  = "terraform-cisco-modules/policies-serial-over-lan/intersight"
  version = ">= 1.0.1"

      baud_rate   = 115200
      com_port    = "com0"
  description      = "default Serial over LAN Policy."
      enabled     = true
  name         = "default"
  organization = "default"
      ssh_port    = 2400
}
