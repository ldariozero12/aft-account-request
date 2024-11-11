# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "w_tst_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "l.dario+aws-wo1-tst@vargroup.it"
    AccountName  = "w1-tst"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Tst (ou-rnzg-9d1xj099)"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "l.dario@vargroup.it"
    SSOUserFirstName = "Luca"
    SSOUserLastName  = "Dario"
  }

  account_tags = {
    "ABC:Owner"       = "john.doe@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }
}
