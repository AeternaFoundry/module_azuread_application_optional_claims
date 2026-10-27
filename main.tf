resource "azuread_application_optional_claims" "application_optional_claims" {
  for_each = var.application_optional_claims

  application_id = each.value.application_id

  dynamic "access_token" {
    for_each = each.value.access_token != null ? each.value.access_token : []
    content {
      additional_properties = access_token.value.additional_properties
      essential             = access_token.value.essential
      name                  = access_token.value.name
      source                = access_token.value.source
    }
  }

  dynamic "id_token" {
    for_each = each.value.id_token != null ? each.value.id_token : []
    content {
      additional_properties = id_token.value.additional_properties
      essential             = id_token.value.essential
      name                  = id_token.value.name
      source                = id_token.value.source
    }
  }

  dynamic "saml2_token" {
    for_each = each.value.saml2_token != null ? each.value.saml2_token : []
    content {
      additional_properties = saml2_token.value.additional_properties
      essential             = saml2_token.value.essential
      name                  = saml2_token.value.name
      source                = saml2_token.value.source
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

