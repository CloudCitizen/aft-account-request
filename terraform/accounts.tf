module "polaris_audit" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "martens_set_0n@icloud.com"
    AccountName               = "Audit"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "galani@me.com"
    SSOUserFirstName          = "Alex"
    SSOUserLastName           = "Galani"
  }
  account_tags = {
    "Owner" = "Security Team"
  }

  change_management_parameters = {
    change_reason       = "Adding the audit account"
    change_requested_by = "Alex Galani"
  }

  account_customizations_name = "audit-customizations"
}
