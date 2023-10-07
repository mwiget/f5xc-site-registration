resource "restapi_object" "approve" {
  count        = length(local.pending_registrations)
  id_attribute = "name"
  path         = format("/register/namespaces/system/registration/%s/approve", local.pending_registrations[count.index])
  data         = jsonencode(
    {
      "name": local.pending_registrations[count.index],
      "state": "APPROVED",
      "passport": {
        "cluster_name": var.cluster_name,
        "cluster_size": length(local.pending_registrations) >= 3 ? 3 : 1,
        "cluster_type": "ce",
        "latitude": var.latitude,
        "longitude": var.longitude,
        "private_network_name": var.private_network_name,
      },
      "tunnel_type": "SITE_TO_SITE_TUNNEL_IPSEC_OR_SSL"
    }
  )
}

output "approve" {
  value = restapi_object.approve[*]
}

