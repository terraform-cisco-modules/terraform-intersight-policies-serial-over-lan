module "main" {
  source       = "../.."
  baud_rate    = 115200
  com_port     = "com0"
  description  = "${var.name} Serial over LAN Policy."
  enabled      = true
  name         = var.name
  organization = "terratest"
  ssh_port     = 2400
}
