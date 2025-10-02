
variable "nrn" {
  type = string


}

variable "project_id" {
  type = string
}
variable "dimension" {


}
variable "location" {

}
variable "domain_name" {
  type = string
}
variable "environments" {
  type = list(string)

}
variable "np_api_key" {
  type      = string
  sensitive = true

}

variable "gitlab_slug" {
  type = string

}
variable "gitlab_name" {
  type = string

}
variable "gitlab_repository_prefix" {
  type = string

}
variable "repository_provider" {
  type    = string
  default = "gitlab"

}


variable "group_path" {
  type = string

}
variable "access_token" {
  type = string

}
variable "installation_url" {
  type = string

}

variable "collaborators_config" {


}

variable "login_server" {  
}
variable "path" {

  
}
variable "password" {
  
}
variable "username" {
  
}
variable "nullplatform-agent-helm-version" {
  
}
variable "cluster_name" {
  
}
variable "tags" {
  
}
variable "environment_tag" {
}
variable "kubeconfig_path" {
  type    = string
  default = "~/.kube/config"
}
variable "kube_context" {
  type    = string
  default = null # o el nombre de tu context
}
variable "nullplatform_port" {
  
}

variable "externa_dns_namespace" {
  
}
variable "external_dns_version" {
  
}

variable "extra_args" {
  
}
variable "dns_provider_name" {
  
}
variable "domain" {
  
}
variable "txt_owner_id" {
  
}


variable "cloudflare_enabled" {

}

variable "cloudflare_token" {
  
}

variable "account_slug" {
  
}
variable "hosted_zone_name" {
  
}
variable "cert_manager_config_version" {
  
}