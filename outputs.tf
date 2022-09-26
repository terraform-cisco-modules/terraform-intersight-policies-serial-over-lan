#____________________________________________________________
#
# Collect the moid of the Serial over LAN Policy
#____________________________________________________________

output "moid" {
  description = "Serial over LAN Policy Managed Object ID (moid)."
  value       = intersight_sol_policy.serial_over_lan.moid
}
