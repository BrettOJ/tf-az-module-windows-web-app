resource "azurerm_windows_web_app" "win_web_app" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  app_settings                                  = var.app_settings
  client_affinity_enabled                       = var.client_affinity_enabled
  client_certificate_enabled                    = var.client_certificate_enabled
  client_certificate_mode                       = var.client_certificate_mode
  client_certificate_exclusion_paths            = var.client_certificate_exclusion_paths
  enabled                                       = var.enabled
  ftp_publish_basic_authentication_enabled      = var.ftp_publish_basic_authentication_enabled
  https_only                                    = var.https_only
  public_network_access_enabled                 = var.public_network_access_enabled
  key_vault_reference_identity_id               = var.key_vault_reference_identity_id
  virtual_network_backup_restore_enabled        = var.virtual_network_backup_restore_enabled
  virtual_network_subnet_id                     = var.virtual_network_subnet_id
  webdeploy_publish_basic_authentication_enabled  = var.webdeploy_publish_basic_authentication_enabled
  zip_deploy_file                               = var.zip_deploy_file
  tags                                          = var.tags

  // Dynamic block for connection strings
  dynamic "connection_string" {
    for_each = var.connection_string
    content {
      name  = connection_string.value.name
      type  = connection_string.value.type
      value = connection_string.value.value
    }
  }

  // Dynamic block for storage accounts
  dynamic "storage_account" {
    for_each = var.storage_account
    content {
      access_key   = storage_account.value.access_key
      account_name = storage_account.value.account_name
      name         = storage_account.value.name
      share_name   = storage_account.value.share_name
      type         = storage_account.value.type
      mount_path   = lookup(storage_account.value, "mount_path", null)
    }
  }

  // Dynamic block for backup configuration
  dynamic "backup" {
    for_each = var.backup != null ? [var.backup] : []
    content {
      name                = backup.value.name
      storage_account_url = backup.value.storage_account_url
      enabled             = lookup(backup.value, "enabled", true)
      dynamic "schedule" {
        for_each = [backup.value.schedule]
        content {
          frequency_interval       = schedule.value.frequency_interval
          frequency_unit           = schedule.value.frequency_unit
          keep_at_least_one_backup = lookup(schedule.value, "keep_at_least_one_backup", false)
          retention_period_days    = lookup(schedule.value, "retention_period_days", 30)
          start_time               = lookup(schedule.value, "start_time", null)
        }
      }
    }
  }

  // Dynamic block for identity configuration
  dynamic "identity" {
    for_each = var.identity != null ? [var.identity] : []
    content {
      type         = identity.value.type
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  // Dynamic block for logs configuration
  dynamic "logs" {
    for_each = var.logs != null ? [var.logs] : []
    content {
      dynamic "application_logs" {
        for_each = logs.value.application_logs != null ? [logs.value.application_logs] : []
        content {
          dynamic "azure_blob_storage" {
            for_each = application_logs.value.azure_blob_storage != null ? [application_logs.value.azure_blob_storage] : []
            content {
              level             = azure_blob_storage.value.level
              retention_in_days = azure_blob_storage.value.retention_in_days
              sas_url           = azure_blob_storage.value.sas_url
            }
          }
          file_system_level = application_logs.value.file_system_level
        }
      }
      detailed_error_messages = lookup(logs.value, "detailed_error_messages", null)
      failed_request_tracing  = lookup(logs.value, "failed_request_tracing", null)
      dynamic "http_logs" {
        for_each = logs.value.http_logs != null ? [logs.value.http_logs] : []
        content {
          dynamic "azure_blob_storage" {
            for_each = http_logs.value.azure_blob_storage != null ? [http_logs.value.azure_blob_storage] : []
            content {
              retention_in_days = azure_blob_storage.value.retention_in_days
              sas_url           = azure_blob_storage.value.sas_url
            }
          }
          dynamic "file_system" {
            for_each = http_logs.value.file_system != null ? [http_logs.value.file_system] : []
            content {
              retention_in_days = file_system.value.retention_in_days
              retention_in_mb   = file_system.value.retention_in_mb
            }
          }
        }
      }
    }
  }

  // Dynamic block for sticky settings
  dynamic "sticky_settings" {
    for_each = var.sticky_settings != null ? [var.sticky_settings] : []
    content {
      app_setting_names       = lookup(sticky_settings.value, "app_setting_names", null)
      connection_string_names = lookup(sticky_settings.value, "connection_string_names", null)
    }
  }

  // Dynamic block for the required site_config
  dynamic "site_config" {
    for_each = [var.site_config]
    content {
      always_on                         = lookup(site_config.value, "always_on", null)
      api_definition_url                = lookup(site_config.value, "api_definition_url", null)
      api_management_api_id             = lookup(site_config.value, "api_management_api_id", null)
      app_command_line                  = lookup(site_config.value, "app_command_line", null)

      // Dynamic block for application_stack within site_config
      dynamic "application_stack" {
        for_each = site_config.value.application_stack != null ? [site_config.value.application_stack] : []
        content {
          current_stack             = lookup(application_stack.value, "current_stack", null)
          docker_image_name         = lookup(application_stack.value, "docker_image_name", null)
          docker_registry_url       = lookup(application_stack.value, "docker_registry_url", null)
          docker_registry_username  = lookup(application_stack.value, "docker_registry_username", null)
          docker_registry_password  = lookup(application_stack.value, "docker_registry_password", null)
          dotnet_version            = lookup(application_stack.value, "dotnet_version", null)
          dotnet_core_version       = lookup(application_stack.value, "dotnet_core_version", null)
          tomcat_version            = lookup(application_stack.value, "tomcat_version", null)
          java_embedded_server_enabled = lookup(application_stack.value, "java_embedded_server_enabled", null)
          java_version              = lookup(application_stack.value, "java_version", null)
          node_version              = lookup(application_stack.value, "node_version", null)
          php_version               = lookup(application_stack.value, "php_version", null)
          python                    = lookup(application_stack.value, "python", null)
        }
      }

      // Dynamic block for auto_heal_setting within site_config
      dynamic "auto_heal_setting" {
        for_each = site_config.value.auto_heal_setting != null ? [site_config.value.auto_heal_setting] : []
        content {
          dynamic "action" {
            for_each = auto_heal_setting.value.action != null ? [auto_heal_setting.value.action] : []
            content {
              action_type = action.value.action_type
              dynamic "custom_action" {
                for_each = contains(keys(action.value), "custom_action") ? [action.value.custom_action] : []
                content {
                  executable = custom_action.value.executable
                  parameters = lookup(custom_action.value, "parameters", null)
                }
              }
              minimum_process_execution_time = lookup(action.value, "minimum_process_execution_time", null)
            }
          }
          dynamic "trigger" {
            for_each = auto_heal_setting.value.trigger != null ? [auto_heal_setting.value.trigger] : []
            content {
              private_memory_kb = lookup(trigger.value, "private_memory_kb", null)
              dynamic "requests" {
                for_each = trigger.value.requests != null ? [trigger.value.requests] : []
                content {
                  count    = requests.value.count
                  interval = requests.value.interval
                }
              }
              dynamic "slow_request" {
                for_each = trigger.value.slow_request != null ? [trigger.value.slow_request] : []
                content {
                  count     = slow_request.value.count
                  interval  = slow_request.value.interval
                  time_taken = slow_request.value.time_taken
                }
              }
              dynamic "slow_request_with_path" {
                for_each = trigger.value.slow_request_with_path != null ? trigger.value.slow_request_with_path : []
                content {
                  count     = slow_request_with_path.value.count
                  interval  = slow_request_with_path.value.interval
                  time_taken = slow_request_with_path.value.time_taken
                  path      = lookup(slow_request_with_path.value, "path", null)
                }
              }
              dynamic "status_code" {
                for_each = trigger.value.status_code != null ? trigger.value.status_code : []
                content {
                  count             = status_code.value.count
                  interval          = status_code.value.interval
                  status_code_range = status_code.value.status_code_range
                  path              = lookup(status_code.value, "path", null)
                  sub_status        = lookup(status_code.value, "sub_status", null)
                  win32_status_code = lookup(status_code.value, "win32_status_code", null)
                }
              }
            }
          }
        }
      }

      container_registry_managed_identity_client_id = lookup(site_config.value, "container_registry_managed_identity_client_id", null)
      container_registry_use_managed_identity         = lookup(site_config.value, "container_registry_use_managed_identity", null)

      dynamic "cors" {
        for_each = site_config.value.cors != null ? [site_config.value.cors] : []
        content {
          allowed_origins     = lookup(cors.value, "allowed_origins", null)
          support_credentials = lookup(cors.value, "support_credentials", null)
        }
      }

      default_documents                = lookup(site_config.value, "default_documents", null)
      ftps_state                       = lookup(site_config.value, "ftps_state", null)
      health_check_path                = lookup(site_config.value, "health_check_path", null)
      health_check_eviction_time_in_min= lookup(site_config.value, "health_check_eviction_time_in_min", null)
      http2_enabled                    = lookup(site_config.value, "http2_enabled", null)

      dynamic "ip_restriction" {
        for_each = site_config.value.ip_restriction != null ? site_config.value.ip_restriction : []
        content {
          action = lookup(ip_restriction.value, "action", null)
          dynamic "headers" {
            for_each = ip_restriction.value.headers != null ? [ip_restriction.value.headers] : []
            content {
              x_azure_fdid     = lookup(headers.value, "x_azure_fdid", null)
              x_fd_health_probe= lookup(headers.value, "x_fd_health_probe", null)
              x_forwarded_for  = lookup(headers.value, "x_forwarded_for", null)
              x_forwarded_host = lookup(headers.value, "x_forwarded_host", null)
            }
          }
          ip_address                = lookup(ip_restriction.value, "ip_address", null)
          name                      = lookup(ip_restriction.value, "name", null)
          priority                  = lookup(ip_restriction.value, "priority", null)
          service_tag               = lookup(ip_restriction.value, "service_tag", null)
          virtual_network_subnet_id = lookup(ip_restriction.value, "virtual_network_subnet_id", null)
          description               = lookup(ip_restriction.value, "description", null)
        }
      }
      ip_restriction_default_action = lookup(site_config.value, "ip_restriction_default_action", null)
      load_balancing_mode           = lookup(site_config.value, "load_balancing_mode", null)
      local_mysql_enabled           = lookup(site_config.value, "local_mysql_enabled", null)
      managed_pipeline_mode         = lookup(site_config.value, "managed_pipeline_mode", null)
      minimum_tls_version           = lookup(site_config.value, "minimum_tls_version", null)
      remote_debugging_enabled      = lookup(site_config.value, "remote_debugging_enabled", null)
      remote_debugging_version      = lookup(site_config.value, "remote_debugging_version", null)
      dynamic "scm_ip_restriction" {
        for_each = site_config.value.scm_ip_restriction != null ? site_config.value.scm_ip_restriction : []
        content {
          action = lookup(scm_ip_restriction.value, "action", null)
          dynamic "headers" {
            for_each = scm_ip_restriction.value.headers != null ? [scm_ip_restriction.value.headers] : []
            content {
              x_azure_fdid     = lookup(headers.value, "x_azure_fdid", null)
              x_fd_health_probe= lookup(headers.value, "x_fd_health_probe", null)
              x_forwarded_for  = lookup(headers.value, "x_forwarded_for", null)
              x_forwarded_host = lookup(headers.value, "x_forwarded_host", null)
            }
          }
          ip_address                = lookup(scm_ip_restriction.value, "ip_address", null)
          name                      = lookup(scm_ip_restriction.value, "name", null)
          priority                  = lookup(scm_ip_restriction.value, "priority", null)
          service_tag               = lookup(scm_ip_restriction.value, "service_tag", null)
          virtual_network_subnet_id = lookup(scm_ip_restriction.value, "virtual_network_subnet_id", null)
          description               = lookup(scm_ip_restriction.value, "description", null)
        }
      }
      scm_ip_restriction_default_action = lookup(site_config.value, "scm_ip_restriction_default_action", null)
      scm_minimum_tls_version           = lookup(site_config.value, "scm_minimum_tls_version", null)
      scm_use_main_ip_restriction       = lookup(site_config.value, "scm_use_main_ip_restriction", null)
      use_32_bit_worker                 = lookup(site_config.value, "use_32_bit_worker", null)
      vnet_route_all_enabled            = lookup(site_config.value, "vnet_route_all_enabled", null)
      websockets_enabled                = lookup(site_config.value, "websockets_enabled", null)
      worker_count                      = lookup(site_config.value, "worker_count", null)

      dynamic "handler_mapping" {
        for_each = site_config.value.handler_mapping != null ? site_config.value.handler_mapping : []
        content {
          extension             = handler_mapping.value.extension
          script_processor_path = handler_mapping.value.script_processor_path
          arguments             = lookup(handler_mapping.value, "arguments", null)
        }
      }

      dynamic "virtual_application" {
        for_each = site_config.value.virtual_application != null ? site_config.value.virtual_application : []
        content {
          physical_path = virtual_application.value.physical_path
          preload       = virtual_application.value.preload
          virtual_path  = virtual_application.value.virtual_path
          dynamic "virtual_directory" {
            for_each = virtual_application.value.virtual_directory != null ? virtual_application.value.virtual_directory : []
            content {
              physical_path = lookup(virtual_directory.value, "physical_path", null)
              virtual_path  = lookup(virtual_directory.value, "virtual_path", null)
            }
          }
        }
      }
    }
  }

  // Dynamic block for auth_settings
  dynamic "auth_settings" {
    for_each = var.auth_settings != null ? [var.auth_settings] : []
    content {
      enabled = auth_settings.value.enabled

      dynamic "active_directory" {
        for_each = auth_settings.value.active_directory != null ? [auth_settings.value.active_directory] : []
        content {
          client_id                  = active_directory.value.client_id
          allowed_audiences          = lookup(active_directory.value, "allowed_audiences", null)
          client_secret              = lookup(active_directory.value, "client_secret", null)
          client_secret_setting_name = lookup(active_directory.value, "client_secret_setting_name", null)
        }
      }
      additional_login_parameters     = lookup(auth_settings.value, "additional_login_parameters", null)
      allowed_external_redirect_urls  = lookup(auth_settings.value, "allowed_external_redirect_urls", null)
      default_provider                = lookup(auth_settings.value, "default_provider", null)

      dynamic "facebook" {
        for_each = auth_settings.value.facebook != null ? [auth_settings.value.facebook] : []
        content {
          app_id                  = facebook.value.app_id
          app_secret              = lookup(facebook.value, "app_secret", null)
          app_secret_setting_name = lookup(facebook.value, "app_secret_setting_name", null)
          oauth_scopes            = lookup(facebook.value, "oauth_scopes", null)
        }
      }

      dynamic "github" {
        for_each = auth_settings.value.github != null ? [auth_settings.value.github] : []
        content {
          client_id                  = github.value.client_id
          client_secret              = lookup(github.value, "client_secret", null)
          client_secret_setting_name = lookup(github.value, "client_secret_setting_name", null)
          oauth_scopes            = lookup(github.value, "oauth_scopes", null)
        }
      }

      dynamic "google" {
        for_each = auth_settings.value.google != null ? [auth_settings.value.google] : []
        content {
          client_id                  = google.value.client_id
          client_secret              = lookup(google.value, "client_secret", null)
          client_secret_setting_name = lookup(google.value, "client_secret_setting_name", null)
          oauth_scopes            = lookup(google.value, "oauth_scopes", null)
        }
      }
      issuer = lookup(auth_settings.value, "issuer", null)
      dynamic "microsoft" {
        for_each = auth_settings.value.microsoft != null ? [auth_settings.value.microsoft] : []
        content {
          client_id                  = microsoft.value.client_id
          client_secret              = lookup(microsoft.value, "client_secret", null)
          client_secret_setting_name = lookup(microsoft.value, "client_secret_setting_name", null)
          oauth_scopes            = lookup(microsoft.value, "oauth_scopes", null)
        }
      }
      runtime_version               = lookup(auth_settings.value, "runtime_version", null)
      token_refresh_extension_hours = lookup(auth_settings.value, "token_refresh_extension_hours", null)
      token_store_enabled           = lookup(auth_settings.value, "token_store_enabled", null)
      dynamic "twitter" {
        for_each = auth_settings.value.twitter != null ? [auth_settings.value.twitter] : []
        content {
          consumer_key                  = twitter.value.consumer_key
          consumer_secret              = lookup(twitter.value, "consumer_secret", null)
          consumer_secret_setting_name = lookup(twitter.value, "consumer_secret_setting_name", null)
        }
      }
      unauthenticated_client_action = lookup(auth_settings.value, "unauthenticated_client_action", null)
    }
  }

  // Dynamic block for auth_settings_v2
  dynamic "auth_settings_v2" {
    for_each = var.auth_settings_v2 != null ? [var.auth_settings_v2] : []
    content {
      auth_enabled       = lookup(auth_settings_v2.value, "auth_enabled", false)
      runtime_version    = lookup(auth_settings_v2.value, "runtime_version", null)
      config_file_path   = lookup(auth_settings_v2.value, "config_file_path", null)
      require_authentication = lookup(auth_settings_v2.value, "require_authentication", null)
      unauthenticated_action = lookup(auth_settings_v2.value, "unauthenticated_action", null)
      default_provider   = lookup(auth_settings_v2.value, "default_provider", null)
      excluded_paths     = lookup(auth_settings_v2.value, "excluded_paths", null)
      require_https      = lookup(auth_settings_v2.value, "require_https", null)
      http_route_api_prefix = lookup(auth_settings_v2.value, "http_route_api_prefix", null)
      forward_proxy_convention = lookup(auth_settings_v2.value, "forward_proxy_convention", null)
      forward_proxy_custom_host_header_name = lookup(auth_settings_v2.value, "forward_proxy_custom_host_header_name", null)
      forward_proxy_custom_scheme_header_name = lookup(auth_settings_v2.value, "forward_proxy_custom_scheme_header_name", null)

      dynamic "apple_v2" {
        for_each = auth_settings_v2.value.apple_v2 != null ? [auth_settings_v2.value.apple_v2] : []
        content {
          client_id                  = apple_v2.value.client_id
          client_secret_setting_name = apple_v2.value.client_secret_setting_name
          login_scopes               = lookup(apple_v2.value, "login_scopes", null)
        }
      }

      dynamic "active_directory_v2" {
        for_each = auth_settings_v2.value.active_directory_v2 != null ? [auth_settings_v2.value.active_directory_v2] : []
        content {
          client_id                      = active_directory_v2.value.client_id
          tenant_auth_endpoint           = active_directory_v2.value.tenant_auth_endpoint
          client_secret_setting_name     = lookup(active_directory_v2.value, "client_secret_setting_name", null)
          client_secret_certificate_thumbprint = lookup(active_directory_v2.value, "client_secret_certificate_thumbprint", null)
          jwt_allowed_groups             = lookup(active_directory_v2.value, "jwt_allowed_groups", null)
          jwt_allowed_client_applications= lookup(active_directory_v2.value, "jwt_allowed_client_applications", null)
          www_authentication_disabled    = lookup(active_directory_v2.value, "www_authentication_disabled", null)
          allowed_groups                 = lookup(active_directory_v2.value, "allowed_groups", null)
          allowed_identities             = lookup(active_directory_v2.value, "allowed_identities", null)
          allowed_applications           = lookup(active_directory_v2.value, "allowed_applications", null)
          login_parameters               = lookup(active_directory_v2.value, "login_parameters", null)
          allowed_audiences              = lookup(active_directory_v2.value, "allowed_audiences", null)
        }
      }

      dynamic "azure_static_web_app_v2" {
        for_each = auth_settings_v2.value.azure_static_web_app_v2 != null ? [auth_settings_v2.value.azure_static_web_app_v2] : []
        content {
          client_id = azure_static_web_app_v2.value.client_id
        }
      }

      dynamic "custom_oidc_v2" {
        for_each = auth_settings_v2.value.custom_oidc_v2 != null ? auth_settings_v2.value.custom_oidc_v2 : []
        content {
          name                          = custom_oidc_v2.value.name
          client_id                     = custom_oidc_v2.value.client_id
          openid_configuration_endpoint = custom_oidc_v2.value.openid_configuration_endpoint
          name_claim_type               = lookup(custom_oidc_v2.value, "name_claim_type", null)
          scopes                        = lookup(custom_oidc_v2.value, "scopes", null)
          client_credential_method      = lookup(custom_oidc_v2.value, "client_credential_method", null)
          client_secret_setting_name    = custom_oidc_v2.value.client_secret_setting_name
          authorisation_endpoint        = lookup(custom_oidc_v2.value, "authorisation_endpoint", null)
          token_endpoint                = lookup(custom_oidc_v2.value, "token_endpoint", null)
          issuer_endpoint               = lookup(custom_oidc_v2.value, "issuer_endpoint", null)
          certification_uri             = lookup(custom_oidc_v2.value, "certification_uri", null)
        }
      }

      dynamic "facebook_v2" {
        for_each = auth_settings_v2.value.facebook_v2 != null ? [auth_settings_v2.value.facebook_v2] : []
        content {
          app_id                  = facebook_v2.value.app_id
          app_secret_setting_name = facebook_v2.value.app_secret_setting_name
          graph_api_version       = lookup(facebook_v2.value, "graph_api_version", null)
          login_scopes            = lookup(facebook_v2.value, "login_scopes", null)
        }
      }

      dynamic "github_v2" {
        for_each = auth_settings_v2.value.github_v2 != null ? [auth_settings_v2.value.github_v2] : []
        content {
          client_id                  = github_v2.value.client_id
          client_secret_setting_name = github_v2.value.client_secret_setting_name
          login_scopes               = lookup(github_v2.value, "login_scopes", null)
        }
      }

      dynamic "google_v2" {
        for_each = auth_settings_v2.value.google_v2 != null ? [auth_settings_v2.value.google_v2] : []
        content {
          client_id                  = google_v2.value.client_id
          client_secret_setting_name = google_v2.value.client_secret_setting_name
          allowed_audiences          = lookup(google_v2.value, "allowed_audiences", null)
          login_scopes               = lookup(google_v2.value, "login_scopes", null)
        }
      }

      dynamic "microsoft_v2" {
        for_each = auth_settings_v2.value.microsoft_v2 != null ? [auth_settings_v2.value.microsoft_v2] : []
        content {
          client_id                  = microsoft_v2.value.client_id
          client_secret_setting_name = microsoft_v2.value.client_secret_setting_name
          allowed_audiences          = lookup(microsoft_v2.value, "allowed_audiences", null)
          login_scopes               = lookup(microsoft_v2.value, "login_scopes", null)
        }
      }

      dynamic "twitter_v2" {
        for_each = auth_settings_v2.value.twitter_v2 != null ? [auth_settings_v2.value.twitter_v2] : []
        content {
          consumer_key                 = twitter_v2.value.consumer_key
          consumer_secret_setting_name = twitter_v2.value.consumer_secret_setting_name
        }
      }

      dynamic "login" {
        for_each = [auth_settings_v2.value.login]
        content {
          logout_endpoint                   = lookup(login.value, "logout_endpoint", null)
          token_store_enabled               = lookup(login.value, "token_store_enabled", null)
          token_refresh_extension_time      = lookup(login.value, "token_refresh_extension_time", null)
          token_store_path                  = lookup(login.value, "token_store_path", null)
          token_store_sas_setting_name      = lookup(login.value, "token_store_sas_setting_name", null)
          preserve_url_fragments_for_logins  = lookup(login.value, "preserve_url_fragments_for_logins", null)
          allowed_external_redirect_urls    = lookup(login.value, "allowed_external_redirect_urls", null)
          cookie_expiration_convention      = lookup(login.value, "cookie_expiration_convention", null)
          cookie_expiration_time            = lookup(login.value, "cookie_expiration_time", null)
          validate_nonce                    = lookup(login.value, "validate_nonce", null)
          nonce_expiration_time             = lookup(login.value, "nonce_expiration_time", null)
        }
      }
    }
  }
}
