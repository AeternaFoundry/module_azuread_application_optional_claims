output "application_optional_claims_id" {
  description = "Map of id values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.id }
}
output "application_optional_claims_access_token" {
  description = "Map of access_token values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.access_token }
}
output "application_optional_claims_application_id" {
  description = "Map of application_id values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.application_id }
}
output "application_optional_claims_id_token" {
  description = "Map of id_token values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.id_token }
}
output "application_optional_claims_saml2_token" {
  description = "Map of saml2_token values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.saml2_token }
}

