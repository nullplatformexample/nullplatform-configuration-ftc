
module "gcp" {
  source       = "git::https://github.com/nullplatform/main-terraform-modules.git//nullplatform/gcp/cloud/gcp?ref=v2"
  nrn          = var.nrn
  project_id   = var.project_id
  dimensions   = var.dimension
  location     = var.location
  domain_name  = var.domain_name
  environments = var.environments
  np_api_key   = var.np_api_key
}

module "code_repository" {
  source                   = "git::https://github.com/nullplatform/main-terraform-modules.git//nullplatform/code_repository?ref=v2"
  git_provider             = "gitlab"
  gitlab_slug              = var.gitlab_slug
  gitlab_name              = var.gitlab_name
  gitlab_repository_prefix = var.gitlab_repository_prefix
  repository_provider      = var.repository_provider
  group_path               = var.group_path
  access_token             = var.access_token
  installation_url         = var.installation_url
  collaborators_config     = var.collaborators_config
  np_api_key               = var.np_api_key
  nrn                      = var.nrn
}


module "asset" {
  source       = "git::https://github.com/nullplatform/main-terraform-modules.git//nullplatform/asset/docker-server?ref=v2"
  nrn          = var.nrn
  login_server = var.login_server
  path         = var.path
  username     = var.username
  password     = var.password
  np_api_key   = var.np_api_key

}

module "agent" {
    source     = "git::https://github.com/nullplatform/main-terraform-modules.git//nullplatform/gcp/agent?ref=v2"
    nrn        = var.nrn
    np_api_key = var.np_api_key
    nullplatform-agent-helm-version = var.nullplatform-agent-helm-version
    cluster_name = ""
    tags = var.tags
    environment_tag = var.environment_tag
 
}


module "base" {
    source = "git::https://github.com/nullplatform/main-terraform-modules.git//nullplatform/gcp/base?ref=v2"
    nrn = var.nrn
    np_api_key = var.np_api_key


}

module "prometheus" {
  source = "git::https://github.com/nullplatform/main-terraform-modules.git//workloads/prometheus?ref=v2"
  nullplatform_port = var.nullplatform_port
  nrn = var.nrn
  np_api_key = var.np_api_key
}


module "external_dns" {
   source = "git::https://github.com/nullplatform/main-terraform-modules.git//workloads/external-dns?ref=v2"
   externa_dns_namespace = var.externa_dns_namespace
   external_dns_version = var.external_dns_version
   extra_args = var.extra_args
   dns_provider_name = var.dns_provider_name
   domain = var.domain
   txt_owner_id = var.txt_owner_id
   cloudflare_token = var.cloudflare_token 

}

module "cert_manager" {
    source = "git::https://github.com/nullplatform/main-terraform-modules.git//workloads/cert-manager?ref=v2"
    cert_manager_namespace = "cert-manager"
    cert_manager_version = "1.18.2"
    cert_manager_config_version = var.cert_manager_config_version
    hosted_zone_name = var.hosted_zone_name
    account_slug = var.account_slug
    cloudflare_enabled = var.cloudflare_enabled
    cloudflare_token = var.cloudflare_token
    
}   

module "istio" {
    source = "git::https://github.com/nullplatform/main-terraform-modules.git//workloads/istio?ref=v2"
}

