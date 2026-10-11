output "application_optional_claims_id" {
  description = "Map of id values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_optional_claims_access_token" {
  description = "Map of access_token values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.access_token if v.access_token != null && length(v.access_token) > 0 }
}
output "application_optional_claims_application_id" {
  description = "Map of application_id values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "application_optional_claims_id_token" {
  description = "Map of id_token values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.id_token if v.id_token != null && length(v.id_token) > 0 }
}
output "application_optional_claims_saml2_token" {
  description = "Map of saml2_token values across all application_optional_claims, keyed the same as var.application_optional_claims"
  value       = { for k, v in azuread_application_optional_claims.application_optional_claims : k => v.saml2_token if v.saml2_token != null && length(v.saml2_token) > 0 }
}

