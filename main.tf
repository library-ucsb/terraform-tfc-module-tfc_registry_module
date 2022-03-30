## module: tfc_registry_module
## creates and manages a module in our TFC private registry


resource "tfe_registry_module" "regmod" {

  vcs_repo {
    display_identifier    = var.display_identifier
    identifier            = var.identifier
    oauth_token_id        = var.oauth_token_id
  }
}

output "id" {
  value                   = tfe_registry_module.regmod.id
}

output "module_provider" {
  value                   = tfe_registry_module.regmod.module_provider
}

output "name" {
  value                   = tfe_registry_module.regmod.name
}

output "organization" {
  value                   = tfe_registry_module.regmod.organization
}
