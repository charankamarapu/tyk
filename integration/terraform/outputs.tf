# Generated by: tyk-ci/wf-gen
# Generated on: Fri  3 Sep 12:21:39 UTC 2021

# Generation commands:
# ./pr.zsh -title [TT-2932] systemd service restore for deb -branch releng/upgrades -repos tyk,tyk-analytics
# m4 -E -DxREPO=tyk


data "terraform_remote_state" "integration" {
  backend = "remote"

  config = {
    organization = "Tyk"
    workspaces = {
      name = "base-prod"
    }
  }
}

output "tyk" {
  value = data.terraform_remote_state.integration.outputs.tyk
  description = "ECR creds for tyk repo"
}

output "region" {
  value = data.terraform_remote_state.integration.outputs.region
  description = "Region in which the env is running"
}
