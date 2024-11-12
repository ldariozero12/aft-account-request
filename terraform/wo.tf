# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "w_tst_3_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "l.dario+aws-wo3-tst@vargroup.it"
    AccountName  = "w3-tst"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Tst (ou-rnzg-o7f0y164)"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "l.dario@vargroup.it"
    SSOUserFirstName = "Luca"
    SSOUserLastName  = "Dario"
  }

  account_tags = {
    "ABC:Owner"       = "l.dario+aws-wo1-tst@vargroup.it"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "New Account"
    change_reason       = "New Account"
  }


  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }
  account_customizations_name = "lnz-w3-tst"
}
