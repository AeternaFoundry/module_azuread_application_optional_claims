variable "application_optional_claims" {
  description = <<EOT
Map of application_optional_claims, attributes below
Required:
    - application_id
Optional:
    - access_token (block):
        - additional_properties (optional)
        - essential (optional)
        - name (required)
        - source (optional)
    - id_token (block):
        - additional_properties (optional)
        - essential (optional)
        - name (required)
        - source (optional)
    - saml2_token (block):
        - additional_properties (optional)
        - essential (optional)
        - name (required)
        - source (optional)
EOT

  type = map(object({
    application_id = string
    access_token = optional(list(object({
      additional_properties = optional(list(string))
      essential             = optional(bool)
      name                  = string
      source                = optional(string)
    })))
    id_token = optional(list(object({
      additional_properties = optional(list(string))
      essential             = optional(bool)
      name                  = string
      source                = optional(string)
    })))
    saml2_token = optional(list(object({
      additional_properties = optional(list(string))
      essential             = optional(bool)
      name                  = string
      source                = optional(string)
    })))
  }))
}

