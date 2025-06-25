include {
  path = "${get_repo_root()}/terragrunt.hcl"
}

dependency "parent" {
  config_path = "../"
  mock_outputs = {
    ready = true
  }
  mock_outputs_allowed_terraform_commands = ["init", "plan", "apply", "show"]
}

terraform {
  source = "git::https://github.com/diggerhq/digger-external-repos.git//env5-acct1?ref=v1.0.0"
}
