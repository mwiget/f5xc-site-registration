data "http" "registrations" {
  url = format("%s/register/namespaces/system/listregistrationsbystate", var.f5xc_api_url)

  request_headers = {
    Accept = "application/json"
    Authorization = format("APIToken %s", var.f5xc_api_token)
  }
  method = "POST"
  request_body = "{\"namespace\":\"system\",\"state\":\"PENDING\"}"
}

output "pending" {
  value = { for k, v in jsondecode(data.http.registrations.response_body).items: 
     format("%s/%s", v.get_spec.passport.cluster_name, v.get_spec.infra.hostname) => v.name
  }
}
