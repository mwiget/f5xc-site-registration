locals {
  pending_registrations = [ for k, v in jsondecode(data.http.registrations.response_body).items: 
     v.get_spec.passport.cluster_name == var.cluster_name ? v.name : ""
]
  all_pending_registrations = { for k, v in jsondecode(data.http.registrations.response_body).items: 
     format("%s/%s", v.get_spec.passport.cluster_name, v.get_spec.infra.hostname) => v.name
  }
}
