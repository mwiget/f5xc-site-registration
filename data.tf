data "http" "registrations" {
  url = format("%s/register/namespaces/system/listregistrationsbystate", var.f5xc_api_url)

  request_headers = {
    Accept = "application/json"
    Authorization = format("APIToken %s", var.f5xc_api_token)
  }
  method = "POST"
  request_body = "{\"namespace\":\"system\",\"state\":\"PENDING\"}"
}
