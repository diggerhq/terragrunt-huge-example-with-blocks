include {
  path = "${get_repo_root()}/terragrunt.hcl"
}

dependency "parent" {
  config_path = "../core"
  mock_outputs = {
    ready = true
  }
  mock_outputs_allowed_terraform_commands = ["init", "plan", "apply"]
}
