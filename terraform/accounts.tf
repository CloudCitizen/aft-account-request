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

module "polaris_logging" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "untaxed-elision0g@icloud.com"
    AccountName               = "Log Archive"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "galani@me.com"
    SSOUserFirstName          = "Alex"
    SSOUserLastName           = "Galani"
  }
  account_tags = {
    "Owner" = "Platform Team"
  }

  change_management_parameters = {
    change_reason       = "Adding the logging account"
    change_requested_by = "Alex Galani"
  }

  account_customizations_name = "logging-customizations"
}

module "aft_deploy_account" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "galani+aft@me.com"
    AccountName               = "AFT-Management"
    ManagedOrganizationalUnit = "deploy"
    SSOUserEmail              = "galani@me.com"
    SSOUserFirstName          = "Alex"
    SSOUserLastName           = "Galani"
  }

  account_tags = {
    "Owner" = "Platform Team"
  }

  change_management_parameters = {
    change_reason       = "Adding the AFT deploy account"
    change_requested_by = "Alex Galani"
  }

  account_customizations_name = "aft-customizations"
}

module "polaris_dev" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "galani+dev@me.com"
    AccountName               = "polaris-dev"
    ManagedOrganizationalUnit = "NonSensitive"
    SSOUserEmail              = "galani@me.com"
    SSOUserFirstName          = "Alex"
    SSOUserLastName           = "Galani"
  }

  account_tags = {
    "Owner" = "Platform Team"
  }

  change_management_parameters = {
    change_reason       = "Adding the polaris-dev account"
    change_requested_by = "Alex Galani"
  }

  account_customizations_name = "polaris-dev-customizations"
}
