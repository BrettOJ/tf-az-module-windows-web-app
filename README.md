# tf-az-module-windows-web-app
Terraform module for creating an azure Windows Web App

---
created: 2025-04-08T07:57:20 (UTC +08:00)
tags: []
source: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app
author: 
---

# azurerm_windows_web_app | Data Sources | hashicorp/azurerm | Terraform | Terraform Registry

> ## Excerpt
> Use this data source to access information about an existing Windows Web App.

---
Use this data source to access information about an existing Windows Web App.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#example-usage)

```hcl
data "azurerm_windows_web_app" "example" { name = "existing" resource_group_name = "existing" } output "id" { value = data.azurerm_windows_web_app.example.id }
```

## [Arguments Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#arguments-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#name-1) - (Required) The name of this Windows Web App.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#resource_group_name-1) - (Required) The name of the Resource Group where the Windows Web App exists.
    

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#id-1) - The ID of the Windows Web App.
    
-   [`app_settings`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#app_settings-1) - A map of key-value pairs of App Settings.
    
-   [`auth_settings`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#auth_settings-1) - A `auth_settings` block as defined below.
    
-   [`auth_settings_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#auth_settings_v2-1) - An `auth_settings_v2` block as defined below.
    
-   [`backup`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#backup-1) - A `backup` block as defined below.
    
-   [`client_affinity_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_affinity_enabled-1) - Is Client Affinity enabled?
    
-   [`client_certificate_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_certificate_enabled-1) - Are Client Certificates enabled?
    
-   [`client_certificate_mode`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_certificate_mode-1) - The Client Certificate mode.
    
-   [`client_certificate_exclusion_paths`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_certificate_exclusion_paths-1) - Paths to exclude when using client certificates, separated by ;
    
-   [`connection_string`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#connection_string-1) - A `connection_string` block as defined below.
    
-   [`custom_domain_verification_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#custom_domain_verification_id-1) - The identifier used by App Service to perform domain ownership verification via DNS TXT record.
    
-   [`hosting_environment_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#hosting_environment_id-1) - The ID of the App Service Environment used by App Service.
    
-   [`default_hostname`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#default_hostname-1) - The Default Hostname of the Windows Web App.
    
-   [`enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#enabled-1) - Is the Windows Web App enabled?
    
-   [`ftp_publish_basic_authentication_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#ftp_publish_basic_authentication_enabled-1) - Are the default FTP Basic Authentication publishing credentials enabled.
    
-   [`https_only`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#https_only-1) - Does the Windows Web App require HTTPS connections.
    
-   [`identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#identity-1) - A `identity` block as defined below.
    
-   [`kind`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#kind-1) - The string representation of the Windows Web App Kind.
    
-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#location-1) - The Azure Region where the Windows Web App exists.
    
-   [`logs`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#logs-1) - A `logs` block as defined below.
    
-   [`outbound_ip_address_list`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#outbound_ip_address_list-1) - The list of Outbound IP Addresses for this Windows Web App.
    
-   [`outbound_ip_addresses`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#outbound_ip_addresses-1) - A string representation of the list of Outbound IP Addresses for this Windows Web App.
    
-   [`possible_outbound_ip_address_list`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#possible_outbound_ip_address_list-1) - The list of Possible Outbound IP Addresses that could be used by this Windows Web App.
    
-   [`possible_outbound_ip_addresses`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#possible_outbound_ip_addresses-1) - The string representation of the list of Possible Outbound IP Addresses that could be used by this Windows Web App.
    
-   [`public_network_access_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#public_network_access_enabled-1) - Is Public Network Access enabled for the Windows Web App.
    
-   [`service_plan_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#service_plan_id-1) - The ID of the Service Plan in which this Windows Web App resides.
    
-   [`site_config`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#site_config-1) - A `site_config` block as defined below.
    
-   [`site_credential`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#site_credential-1) - A `site_credential` block as defined below.
    
-   [`sticky_settings`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#sticky_settings-1) - A `sticky_settings` block as defined below.
    
-   [`storage_account`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#storage_account-1) - A `storage_account` block as defined below.
    
-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#tags-1) - A mapping of tags assigned to the Windows Web App.
    
-   [`virtual_network_subnet_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#virtual_network_subnet_id-1) - The subnet id which the Windows Web App is vNet Integrated with.
    
-   [`webdeploy_publish_basic_authentication_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#webdeploy_publish_basic_authentication_enabled-1) - Are the default WebDeploy Basic Authentication publishing credentials enabled.
    

___

A `action` block exports the following:

-   [`action_type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#action_type-1) - The predefined action to be taken to an Auto Heal trigger.
    
-   [`custom_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#custom_action-1) - A `custom_action` block as defined below.
    
-   [`minimum_process_execution_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#minimum_process_execution_time-1) - The minimum amount of time in `hh:mm:ss` the Windows Web App must have been running before the defined action will be run in the event of a trigger.
    

___

An `active_directory` block exports the following:

-   [`allowed_audiences`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_audiences-1) - An `allowed_audiences` block as defined below.
    
-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-2) - The ID of the Client used to authenticate with Azure Active Directory.
    
-   [`client_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret-2) - The Client Secret for the Client ID.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-1) - The App Setting name that contains the client secret of the Client.
    

___

An `application_logs` block exports the following:

-   [`azure_blob_storage`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#azure_blob_storage-1) - An `azure_blob_storage` block as defined below.
    
-   [`file_system_level`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#file_system_level-1) - The logging level.
    

___

An `application_stack` block exports the following:

-   [`current_stack`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#current_stack-1) - The Current Stack value of the Windows Web App.
    
-   [`docker_image_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#docker_image_name-1) - The docker image, including tag, used by this Windows Web App.
    
-   [`docker_registry_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#docker_registry_url-1) - The URL of the container registry where the `docker_image_name` is located.
    
-   [`docker_registry_username`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#docker_registry_username-1) - The User Name to use for authentication against the registry to pull the image.
    
-   [`docker_registry_password`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#docker_registry_password-1) - The User Name to use for authentication against the registry to pull the image.
    
-   [`dotnet_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#dotnet_version-1) - The version of .NET in use.
    
-   [`java_container`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#java_container-1) - The Java Container in use.
    
-   [`java_container_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#java_container_version-1) - The Version of the Java Container in use.
    
-   [`java_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#java_version-1) - The Version of Java in use.
    
-   [`node_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#node_version-1) - The Version of Node in use.
    
-   [`php_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#php_version-1) - The Version of the PHP in use.
    
-   [`python_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#python_version-1) - The Version of Python in use.
    

___

A `auth_settings` block exports the following:

-   [`active_directory`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#active_directory-1) - A `active_directory` block as defined above.
    
-   [`additional_login_parameters`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#additional_login_parameters-1) - A `additional_login_parameters` block as defined above.
    
-   [`allowed_external_redirect_urls`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_external_redirect_urls-1) - A `allowed_external_redirect_urls` block as defined above.
    
-   [`default_provider`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#default_provider-1) - The default authentication provider in use when multiple providers are configured.
    
-   [`enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#enabled-2) - Is the Authentication / Authorization feature is enabled for the Windows Web App?
    
-   [`facebook`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#facebook-1) - A `facebook` block as defined below.
    
-   [`github`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#github-1) - A `github` block as defined below.
    
-   [`google`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#google-1) - A `google` block as defined below.
    
-   [`issuer`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#issuer-1) - The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App.
    
-   [`microsoft`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#microsoft-1) - A `microsoft` block as defined below.
    
-   [`runtime_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#runtime_version-1) - The RuntimeVersion of the Authentication / Authorization feature in use for the Windows Web App.
    
-   [`token_refresh_extension_hours`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#token_refresh_extension_hours-1) - The number of hours after session token expiration that a session token can be used to call the token refresh API.
    
-   [`token_store_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#token_store_enabled-1) - Does Windows Web App durably store platform-specific security tokens that are obtained during login flows enabled?
    
-   [`twitter`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#twitter-1) - A `twitter` block as defined below.
    
-   [`unauthenticated_client_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#unauthenticated_client_action-1) - The action to take when an unauthenticated client attempts to access the app.
    

___

An `auth_settings_v2` block exports the following:

-   [`auth_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#auth_enabled-1) - Are the AuthV2 Settings enabled.
    
-   [`runtime_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#runtime_version-2) - The Runtime Version of the Authentication and Authorisation feature of this App.
    
-   [`config_file_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#config_file_path-1) - The path to the App Auth settings.
    
-   [`require_authentication`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#require_authentication-1) - Is the authentication flow used for all requests.
    
-   [`unauthenticated_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#unauthenticated_action-1) - The action to take for requests made without authentication.
    
-   [`default_provider`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#default_provider-2) -The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
    
-   [`excluded_paths`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#excluded_paths-1) - The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
    
-   [`require_https`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#require_https-1) -Is HTTPS required on connections?
    
-   [`http_route_api_prefix`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#http_route_api_prefix-1) - The prefix that should precede all the authentication and authorisation paths.
    
-   [`forward_proxy_convention`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#forward_proxy_convention-1) - The convention used to determine the url of the request made.
    
-   [`forward_proxy_custom_host_header_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#forward_proxy_custom_host_header_name-1) -The name of the custom header containing the host of the request.
    
-   [`forward_proxy_custom_scheme_header_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#forward_proxy_custom_scheme_header_name-1) - The name of the custom header containing the scheme of the request.
    
-   [`apple_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#apple_v2-1) - An `apple_v2` block as defined below.
    
-   [`active_directory_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#active_directory_v2-1) - An `active_directory_v2` block as defined below.
    
-   [`azure_static_web_app_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#azure_static_web_app_v2-1) - An `azure_static_web_app_v2` block as defined below.
    
-   [`custom_oidc_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#custom_oidc_v2-1) - Zero or more `custom_oidc_v2` blocks as defined below.
    
-   [`facebook_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#facebook_v2-1) - A `facebook_v2` block as defined below.
    
-   [`github_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#github_v2-1) - A `github_v2` block as defined below.
    
-   [`google_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#google_v2-1) - A `google_v2` block as defined below.
    
-   [`microsoft_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#microsoft_v2-1) - A `microsoft_v2` block as defined below.
    
-   [`twitter_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#twitter_v2-1) - A `twitter_v2` block as defined below.
    
-   [`login`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#login-1) - A `login` block as defined below.
    

___

An `apple_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-3) - The OpenID Connect Client ID for the Apple web application.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-2) - The app setting name that contains the `client_secret` value used for Apple Login.
    
-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#login_scopes-1) - A list of Login Scopes provided by this Authentication Provider.
    

___

An `active_directory_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-4) - The ID of the Client used to authenticate with Azure Active Directory.
    
-   [`tenant_auth_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#tenant_auth_endpoint-1) - The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-3) - The App Setting name that contains the client secret of the Client.
    
-   [`client_secret_certificate_thumbprint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_certificate_thumbprint-1) - The thumbprint of the certificate used for signing purposes.
    
-   [`jwt_allowed_groups`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#jwt_allowed_groups-1) - The list of Allowed Groups in the JWT Claim.
    
-   [`jwt_allowed_client_applications`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#jwt_allowed_client_applications-1) - The list of Allowed Client Applications in the JWT Claim.
    
-   [`www_authentication_disabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#www_authentication_disabled-1) - Is the www-authenticate provider omitted from the request?
    
-   [`allowed_groups`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_groups-1) -The list of allowed Group Names for the Default Authorisation Policy.
    
-   [`allowed_identities`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_identities-1) - The list of allowed Identities for the Default Authorisation Policy.
    
-   [`allowed_applications`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_applications-1) - The list of allowed Applications for the Default Authorisation Policy.
    
-   [`login_parameters`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#login_parameters-1) - A map of key-value pairs sent to the Authorisation Endpoint when a user logs in.
    
-   [`allowed_audiences`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_audiences-2) - Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
    

___

An `azure_static_web_app_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-5) - The ID of the Client to use to authenticate with Azure Static Web App Authentication.

___

A `custom_oidc_v2` block supports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#name-2) - The name of the Custom OIDC Authentication Provider.
    
-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-6) - The ID of the Client to use to authenticate with the Custom OIDC.
    
-   [`openid_configuration_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#openid_configuration_endpoint-1)\- The endpoint used for OpenID Connect Discovery. For example `https://example.com/.well-known/openid-configuration`.
    
-   [`name_claim_type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#name_claim_type-1) - The name of the claim that contains the users name.
    
-   [`scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#scopes-1) - The list of the scopes that are requested while authenticating.
    
-   [`client_credential_method`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_credential_method-1) - The Client Credential Method used.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-4) - The App Setting name that contains the secret for this Custom OIDC Client. This is generated from `name` above and suffixed with `_PROVIDER_AUTHENTICATION_SECRET`.
    
-   [`authorisation_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#authorisation_endpoint-1) - The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
    
-   [`token_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#token_endpoint-1) - The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
    
-   [`issuer_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#issuer_endpoint-1) - The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
    
-   [`certification_uri`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#certification_uri-1) - The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
    

___

A `facebook_v2` block supports the following:

-   [`app_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#app_id-1) - The App ID of the Facebook app used for login.
    
-   [`app_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#app_secret_setting_name-1) - The app setting name that contains the `app_secret` value used for Facebook Login.
    
-   [`graph_api_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#graph_api_version-1) - The version of the Facebook API to be used while logging in.
    
-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#login_scopes-2) - The list of scopes that are requested as part of Facebook Login authentication.
    

___

A `github_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-7) - The ID of the GitHub app used for login.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-5) - The app setting name that contains the `client_secret` value used for GitHub Login.
    
-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#login_scopes-3) - The list of OAuth 2.0 scopes that are requested as part of GitHub Login authentication.
    

___

A `google_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-8) - The OpenID Connect Client ID for the Google web application.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-6) - The app setting name that contains the `client_secret` value used for Google Login.
    
-   [`allowed_audiences`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_audiences-3) - The list of Allowed Audiences that are requested as part of Google Sign-In authentication.
    
-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#login_scopes-4) - (Optional) The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
    

___

A `microsoft_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-9) - The OAuth 2.0 client ID that was created for the app used for authentication.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-7) - The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
    
-   [`allowed_audiences`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_audiences-4) - The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
    
-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#login_scopes-5) - The list of Login scopes that are requested as part of Microsoft Account authentication.
    

___

A `twitter_v2` block supports the following:

-   [`consumer_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#consumer_key-1) - The OAuth 1.0a consumer key of the Twitter application used for sign-in.
    
-   [`consumer_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#consumer_secret_setting_name-1) - The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
    

___

A `login` block supports the following:

-   [`logout_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#logout_endpoint-1) - The endpoint to which logout requests are made.
    
-   [`token_store_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#token_store_enabled-2) - Is the Token Store configuration Enabled.
    
-   [`token_refresh_extension_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#token_refresh_extension_time-1) - The number of hours after session token expiration that a session token can be used to call the token refresh API.
    
-   [`token_store_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#token_store_path-1) - The directory path in the App Filesystem in which the tokens are stored.
    
-   [`token_store_sas_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#token_store_sas_setting_name-1) - The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
    
-   [`preserve_url_fragments_for_logins`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#preserve_url_fragments_for_logins-1) - Are the fragments from the request preserved after the login request is made.
    
-   [`allowed_external_redirect_urls`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_external_redirect_urls-2) - External URLs that can be redirected to as part of logging in or logging out of the app.
    
-   [`cookie_expiration_convention`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#cookie_expiration_convention-1) - The method by which cookies expire.
    
-   [`cookie_expiration_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#cookie_expiration_time-1) - The time after the request is made when the session cookie should expire.
    
-   [`validate_nonce`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#validate_nonce-1) - Is the nonce validated while completing the login flow.
    
-   [`nonce_expiration_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#nonce_expiration_time-1) - The time after the request is made when the nonce should expire.
    

___

A `auto_heal_setting` block exports the following:

-   [`action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#action-1) - A `action` block as defined above.
    
-   [`trigger`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#trigger-1) - A `trigger` block as defined below.
    

___

A `azure_blob_storage` block exports the following:

-   [`level`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#level-1) - The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
    
-   [`retention_in_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#retention_in_days-1) - The time in days after which blobs will be removed.
    
-   [`sas_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#sas_url-1) - The SAS url to the Azure Blob container.
    

___

A `backup` block exports the following:

-   [`enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#enabled-3) - Is the Backup enabled?
    
-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#name-3) - The name of this Backup.
    
-   [`schedule`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#schedule-1) - A `schedule` block as defined below.
    
-   [`storage_account_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#storage_account_url-1) - The SAS URL to the container.
    

___

A `connection_string` block exports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#name-4) - The name of this Connection String.
    
-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#type-1) - The type of Database.
    
-   [`value`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#value-1) - The Connection String value.
    

___

A `cors` block exports the following:

-   [`allowed_origins`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#allowed_origins-1) - A `allowed_origins` block as defined above.
    
-   [`support_credentials`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#support_credentials-1) - Whether CORS requests with credentials are allowed.
    

___

A `custom_action` block exports the following:

-   [`executable`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#executable-1) - The command run when this `auto_heal` action is triggered.
    
-   [`parameters`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#parameters-1) - The parameters passed to the `executable`.
    

___

A `facebook` block exports the following:

-   [`app_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#app_id-2) - The App ID of the Facebook app used for login.
    
-   [`app_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#app_secret-1) - The App Secret of the Facebook app used for Facebook login.
    
-   [`app_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#app_secret_setting_name-2) - The app setting name that contains the `app_secret` value used for Facebook login.
    
-   [`oauth_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#oauth_scopes-1) - A list of OAuth 2.0 scopes that are part of Facebook login authentication.
    

___

A `file_system` block exports the following:

-   [`retention_in_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#retention_in_days-2) - The retention period in days.
    
-   [`retention_in_mb`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#retention_in_mb-1) - The maximum size in megabytes that log files can use.
    

___

A `github` block exports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-10) - The ID of the GitHub app used for login.
    
-   [`client_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret-3) - The Client Secret of the GitHub app used for GitHub login.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-8) - The app setting name that contains the `client_secret` value used for GitHub login.
    
-   [`oauth_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#oauth_scopes-2) - A list of OAuth 2.0 scopes in the GitHub login authentication.
    

___

A `google` block exports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-11) - The OpenID Connect Client ID for the Google web application.
    
-   [`client_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret-4) - The client secret associated with the Google web application.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-9) - The app setting name that contains the `client_secret` value used for Google login.
    
-   [`oauth_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#oauth_scopes-3) - A list of OAuth 2.0 scopes that are part of Google Sign-In authentication.
    

___

A `http_logs` block exports the following:

-   [`azure_blob_storage`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#azure_blob_storage-2) - A `azure_blob_storage` block as defined above.
    
-   [`file_system`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#file_system-1) - A `file_system` block as defined above.
    

___

A `identity` block exports the following:

-   [`identity_ids`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#identity_ids-1) - A `identity_ids` block as defined below.
    
-   [`principal_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#principal_id-1) - The Principal ID Managed Service Identity.
    
-   [`tenant_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#tenant_id-2) - The Tenant ID of the Managed Service Identity.
    
-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#type-2) - The type of Managed Service Identity.
    

___

A `logs` block exports the following:

-   [`application_logs`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#application_logs-1) - A `application_logs` block as defined above.
    
-   [`detailed_error_messages`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#detailed_error_messages-1) - Is Detailed Error Messaging enabled.
    
-   [`failed_request_tracing`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#failed_request_tracing-1) - Is Failed Request Tracing enabled.
    
-   [`http_logs`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#http_logs-1) - An `http_logs` block as defined above.
    

___

A `microsoft` block exports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_id-12) - The OAuth 2.0 client ID used by the app for authentication.
    
-   [`client_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret-5) - The OAuth 2.0 client secret used by the app for authentication.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#client_secret_setting_name-10) - The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
    
-   [`oauth_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#oauth_scopes-4) - A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
    

___

A `requests` block exports the following:

-   [`count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#count-1) - The number of requests in the specified `interval` to trigger this rule.
    
-   [`interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#interval-1) - The interval in `hh:mm:ss`.
    

___

A `schedule` block exports the following:

-   [`frequency_interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#frequency_interval-1) - How often the backup will be executed.
    
-   [`frequency_unit`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#frequency_unit-1) - The unit of time for how often the backup should take place.
    
-   [`keep_at_least_one_backup`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#keep_at_least_one_backup-1) - Will the service keep at least one backup, regardless of age of backup.
    
-   [`last_execution_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#last_execution_time-1) - The time of the last backup attempt.
    
-   [`retention_period_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#retention_period_days-1) - After how many days backups should be deleted.
    
-   [`start_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#start_time-1) - When the schedule should start in RFC-3339 format.
    

___

A `site_config` block exports the following:

-   [`always_on`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#always_on-1) - Is this Windows Web App is Always On enabled.
    
-   [`api_definition_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#api_definition_url-1) - The ID of the APIM configuration for this Windows Web App.
    
-   [`api_management_api_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#api_management_api_id-1) - The ID of the API Management setting linked to the Windows Web App.
    
-   [`app_command_line`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#app_command_line-1) - The command line used to launch this app.
    
-   [`application_stack`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#application_stack-1) - A `application_stack` block as defined above.
    
-   [`auto_heal_setting`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#auto_heal_setting-1) - A `auto_heal_setting` block as defined above.
    
-   [`auto_swap_slot_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#auto_swap_slot_name-1) - The Windows Web App Slot Name to automatically swap to when deployment to that slot is successfully completed.
    
-   [`container_registry_managed_identity_client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#container_registry_managed_identity_client_id-1) - The Client ID of the Managed Service Identity used for connections to the Azure Container Registry.
    
-   [`container_registry_use_managed_identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#container_registry_use_managed_identity-1) - Do connections for Azure Container Registry use Managed Identity.
    
-   [`cors`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#cors-1) - A `cors` block as defined above.
    
-   [`default_documents`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#default_documents-1) - The list of Default Documents for the Windows Web App.
    
-   [`detailed_error_logging_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#detailed_error_logging_enabled-1) - Is Detailed Error Logging enabled.
    
-   [`ftps_state`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#ftps_state-1) - The State of FTP / FTPS service.
    
-   [`health_check_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#health_check_path-1) - The path to the Health Check endpoint.
    
-   [`health_check_eviction_time_in_min`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#health_check_eviction_time_in_min-1) - (Optional) The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
    
-   [`http2_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#http2_enabled-1) - Is HTTP2.0 enabled.
    
-   [`ip_restriction`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#ip_restriction-1) - A `ip_restriction` block as defined above.
    
-   [`ip_restriction_default_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#ip_restriction_default_action-1) - The Default action for traffic that does not match any `ip_restriction` rule.
    
-   [`load_balancing_mode`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#load_balancing_mode-1) - The site Load Balancing Mode.
    
-   [`local_mysql_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#local_mysql_enabled-1) - Is the Local MySQL enabled.
    
-   [`managed_pipeline_mode`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#managed_pipeline_mode-1) - The Managed Pipeline Mode.
    
-   [`minimum_tls_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#minimum_tls_version-1) - The Minimum version of TLS for requests.
    
-   [`remote_debugging`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#remote_debugging-1) - Is Remote Debugging enabled.
    
-   [`remote_debugging_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#remote_debugging_version-1) - The Remote Debugging Version.
    
-   [`scm_ip_restriction`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#scm_ip_restriction-1) - A `scm_ip_restriction` block as defined above.
    
-   [`scm_ip_restriction_default_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#scm_ip_restriction_default_action-1) - The Default action for traffic that does not match any `scm_ip_restriction` rule.
    
-   [`scm_minimum_tls_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#scm_minimum_tls_version-1) - The Minimum version of TLS for requests to SCM.
    
-   [`scm_type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#scm_type-1) - The Source Control Management Type in use.
    
-   [`scm_use_main_ip_restriction`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#scm_use_main_ip_restriction-1) - Is the Windows Web App `ip_restriction` configuration used for the SCM also.
    
-   [`use_32_bit_worker`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#use_32_bit_worker-1) - Does the Windows Web App use a 32-bit worker.
    
-   [`handler_mapping`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#handler_mapping-1) - A `handler_mapping` block as defined below.
    
-   [`virtual_application`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#virtual_application-1) - A `virtual_application` block as defined below.
    
-   [`vnet_route_all_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#vnet_route_all_enabled-1) - Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
    
-   [`websockets_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#websockets_enabled-1) - Are Web Sockets enabled?
    
-   [`windows_fx_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#windows_fx_version-1) - The string representation of the Windows FX Version.
    
-   [`worker_count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#worker_count-1) - The number of Workers for this Windows App Service.
    

___

A `site_credential` block exports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#name-5) - The Site Credentials Username used for publishing.
    
-   [`password`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#password-1) - The Site Credentials Password used for publishing.
    

___

A `slow_request` block exports the following:

-   [`count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#count-2) - The number of requests within the interval at which to trigger.
    
-   [`interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#interval-2) - The time interval.
    
-   [`time_taken`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#time_taken-1) - The amount of time that qualifies as slow for this rule.
    

___

A `slow_request_with_path` block supports the following:

-   [`count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#count-3) - (Required) The number of Slow Requests in the time `interval` to trigger this rule.
    
-   [`interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#interval-3) - (Required) The time interval in the form `hh:mm:ss`.
    
-   [`time_taken`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#time_taken-2) - (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
    
-   [`path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#path-1) - (Optional) The path for which this slow request rule applies.
    

___

A `status_code` block exports the following:

-   [`count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#count-4) - The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
    
-   [`interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#interval-4) - The time interval in the form `hh:mm:ss`.
    
-   [`path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#path-2) - The path to which this rule status code applies.
    
-   [`status_code_range`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#status_code_range-1) - The status code or range for this rule.
    
-   [`sub_status`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#sub_status-1) - The Request Sub Status of the Status Code.
    
-   [`win32_status_code`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#win32_status_code-1) - The Win32 Status Code of the Request.
    

___

A `sticky_settings` block exports the following:

-   [`app_setting_names`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#app_setting_names-1) - A list of `app_setting` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
    
-   [`connection_string_names`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#connection_string_names-1) - A list of `connection_string` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
    

___

A `storage_account` block exports the following:

-   [`access_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#access_key-1) - The Access key for the storage account.
    
-   [`account_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#account_name-1) - The Name of the Storage Account.
    
-   [`mount_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#mount_path-1) - The path at which to mount the Storage Share.
    
-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#name-6) - The name of this Storage Account.
    
-   [`share_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#share_name-1) - The Name of the File Share.
    
-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#type-3) - The Azure Storage Type.
    

___

A `trigger` block exports the following:

-   [`private_memory_kb`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#private_memory_kb-1) - The amount of Private Memory used.
    
-   [`requests`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#requests-1) - A `requests` block as defined above.
    
-   [`slow_request`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#slow_request-1) - A `slow_request` block as defined above.
    
-   [`slow_request_with_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#slow_request_with_path-1) - (Optional) One or more `slow_request_with_path` blocks as defined above.
    
-   [`status_code`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#status_code-1) - A `status_code` block as defined above.
    

___

A `twitter` block exports the following:

-   [`consumer_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#consumer_key-2) - The OAuth 1.0a consumer key of the Twitter application used for sign-in.
    
-   [`consumer_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#consumer_secret-1) - The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
    
-   [`consumer_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#consumer_secret_setting_name-2) - The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
    

___

A `handler_mapping` block supports the following:

-   [`extension`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#extension-1) - The extension to be handled by the specified FastCGI application.
    
-   [`script_processor_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#script_processor_path-1) - The absolute path to the FastCGI application.
    
-   [`arguments`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#arguments-1) - The command-line arguments to be passed to the script processor.
    

___

A `virtual_application` block exports the following:

-   [`physical_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#physical_path-1) - The path on disk to the Virtual Application.
    
-   [`preload`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#preload-1) - Is this Application Pre-loaded at startup.
    
-   [`virtual_directory`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#virtual_directory-1) - A `virtual_directory` block as defined below.
    
-   [`virtual_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#virtual_path-1) - The Virtual Path of the Virtual Application on the service.
    

___

A `virtual_directory` block exports the following:

-   [`physical_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#physical_path-2) - The path on disk to the Virtual Directory
    
-   [`virtual_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#virtual_path-2) - The Virtual Path of the Virtual Directory.
    

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/windows_web_app#read-1) - (Defaults to 10 minutes) Used when retrieving the Windows Web App.
