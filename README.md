
list pending registrations for a given tenant

Copy terraform.tfvars.example to terraform.tfvars and adjust tenant and api key
and set cluster_name to the site you want to approve. It is used to filter the pending registrations
plus latitude and longitude.

Caveat:

`terraform destroy` will succeed but won't delete the registrations in F5XC. 


```
$ terraform init
$ terraform apply --auto-approve

data.http.registrations: Reading...
data.http.registrations: Read complete after 1s [id=https://playground.console.ves.volterra.io/api/register/namespaces/system/listregistrationsbystate]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # restapi_object.approve[0] will be created
  + resource "restapi_object" "approve" {
      + api_data        = (known after apply)
      + api_response    = (known after apply)
      + create_response = (known after apply)
      + data            = jsonencode(
            {
              + name        = "r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b"
              + passport    = {
                  + cluster_name         = "mw-appstack-test1"
                  + cluster_size         = 3
                  + cluster_type         = "ce"
                  + latitude             = "47.1"
                  + longitude            = "8.5"
                  + private_network_name = ""
                }
              + state       = "APPROVED"
              + tunnel_type = "SITE_TO_SITE_TUNNEL_IPSEC_OR_SSL"
            }
        )
      + id              = (known after apply)
      + id_attribute    = "name"
      + path            = "/register/namespaces/system/registration/r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b/approve"
    }

  # restapi_object.approve[1] will be created
  + resource "restapi_object" "approve" {
      + api_data        = (known after apply)
      + api_response    = (known after apply)
      + create_response = (known after apply)
      + data            = jsonencode(
            {
              + name        = "r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc"
              + passport    = {
                  + cluster_name         = "mw-appstack-test1"
                  + cluster_size         = 3
                  + cluster_type         = "ce"
                  + latitude             = "47.1"
                  + longitude            = "8.5"
                  + private_network_name = ""
                }
              + state       = "APPROVED"
              + tunnel_type = "SITE_TO_SITE_TUNNEL_IPSEC_OR_SSL"
            }
        )
      + id              = (known after apply)
      + id_attribute    = "name"
      + path            = "/register/namespaces/system/registration/r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc/approve"
    }

  # restapi_object.approve[2] will be created
  + resource "restapi_object" "approve" {
      + api_data        = (known after apply)
      + api_response    = (known after apply)
      + create_response = (known after apply)
      + data            = jsonencode(
            {
              + name        = "r-bd4db58e-ea8f-491d-9261-b6d887bf7dba"
              + passport    = {
                  + cluster_name         = "mw-appstack-test1"
                  + cluster_size         = 3
                  + cluster_type         = "ce"
                  + latitude             = "47.1"
                  + longitude            = "8.5"
                  + private_network_name = ""
                }
              + state       = "APPROVED"
              + tunnel_type = "SITE_TO_SITE_TUNNEL_IPSEC_OR_SSL"
            }
        )
      + id              = (known after apply)
      + id_attribute    = "name"
      + path            = "/register/namespaces/system/registration/r-bd4db58e-ea8f-491d-9261-b6d887bf7dba/approve"
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + all_pending_registrations = {
      + "mw-appstack-test1/m0" = "r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b"
      + "mw-appstack-test1/m1" = "r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc"
      + "mw-appstack-test1/m2" = "r-bd4db58e-ea8f-491d-9261-b6d887bf7dba"
    }
  + approve                   = [
      + {
          + api_data        = (known after apply)
          + api_response    = (known after apply)
          + create_method   = null
          + create_path     = null
          + create_response = (known after apply)
          + data            = jsonencode(
                {
                  + name        = "r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b"
                  + passport    = {
                      + cluster_name         = "mw-appstack-test1"
                      + cluster_size         = 3
                      + cluster_type         = "ce"
                      + latitude             = "47.1"
                      + longitude            = "8.5"
                      + private_network_name = ""
                    }
                  + state       = "APPROVED"
                  + tunnel_type = "SITE_TO_SITE_TUNNEL_IPSEC_OR_SSL"
                }
            )
          + debug           = null
          + destroy_data    = null
          + destroy_method  = null
          + destroy_path    = null
          + force_new       = null
          + id              = (known after apply)
          + id_attribute    = "name"
          + object_id       = null
          + path            = "/register/namespaces/system/registration/r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b/approve"
          + query_string    = null
          + read_method     = null
          + read_path       = null
          + read_search     = null
          + update_data     = null
          + update_method   = null
          + update_path     = null
        },
      + {
          + api_data        = (known after apply)
          + api_response    = (known after apply)
          + create_method   = null
          + create_path     = null
          + create_response = (known after apply)
          + data            = jsonencode(
                {
                  + name        = "r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc"
                  + passport    = {
                      + cluster_name         = "mw-appstack-test1"
                      + cluster_size         = 3
                      + cluster_type         = "ce"
                      + latitude             = "47.1"
                      + longitude            = "8.5"
                      + private_network_name = ""
                    }
                  + state       = "APPROVED"
                  + tunnel_type = "SITE_TO_SITE_TUNNEL_IPSEC_OR_SSL"
                }
            )
          + debug           = null
          + destroy_data    = null
          + destroy_method  = null
          + destroy_path    = null
          + force_new       = null
          + id              = (known after apply)
          + id_attribute    = "name"
          + object_id       = null
          + path            = "/register/namespaces/system/registration/r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc/approve"
          + query_string    = null
          + read_method     = null
          + read_path       = null
          + read_search     = null
          + update_data     = null
          + update_method   = null
          + update_path     = null
        },
      + {
          + api_data        = (known after apply)
          + api_response    = (known after apply)
          + create_method   = null
          + create_path     = null
          + create_response = (known after apply)
          + data            = jsonencode(
                {
                  + name        = "r-bd4db58e-ea8f-491d-9261-b6d887bf7dba"
                  + passport    = {
                      + cluster_name         = "mw-appstack-test1"
                      + cluster_size         = 3
                      + cluster_type         = "ce"
                      + latitude             = "47.1"
                      + longitude            = "8.5"
                      + private_network_name = ""
                    }
                  + state       = "APPROVED"
                  + tunnel_type = "SITE_TO_SITE_TUNNEL_IPSEC_OR_SSL"
                }
            )
          + debug           = null
          + destroy_data    = null
          + destroy_method  = null
          + destroy_path    = null
          + force_new       = null
          + id              = (known after apply)
          + id_attribute    = "name"
          + object_id       = null
          + path            = "/register/namespaces/system/registration/r-bd4db58e-ea8f-491d-9261-b6d887bf7dba/approve"
          + query_string    = null
          + read_method     = null
          + read_path       = null
          + read_search     = null
          + update_data     = null
          + update_method   = null
          + update_path     = null
        },
    ]
  + pending_registrations     = [
      + "r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b",
      + "r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc",
      + "r-bd4db58e-ea8f-491d-9261-b6d887bf7dba",
    ]
restapi_object.approve[2]: Creating...
restapi_object.approve[0]: Creating...
restapi_object.approve[1]: Creating...
restapi_object.approve[2]: Creation complete after 1s [id=r-bd4db58e-ea8f-491d-9261-b6d887bf7dba]
restapi_object.approve[0]: Creation complete after 1s [id=r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b]
restapi_object.approve[1]: Creation complete after 1s [id=r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

all_pending_registrations = {
  "mw-appstack-test1/m0" = "r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b"
  "mw-appstack-test1/m1" = "r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc"
  "mw-appstack-test1/m2" = "r-bd4db58e-ea8f-491d-9261-b6d887bf7dba"
}
. . .
pending_registrations = [
  "r-ce4a64d7-b0f3-49eb-b86d-a61f816cd27b",
  "r-9429da6d-7ab2-4e60-87cd-bf79b48eb4cc",
  "r-bd4db58e-ea8f-491d-9261-b6d887bf7dba",
]
```

