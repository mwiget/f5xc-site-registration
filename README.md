
list pending registrations for a given tenant

Copy terraform.tfvars.example to terraform.tfvars and adjust tenant and api key

```
terraform plan
data.http.registrations: Reading...
data.http.registrations: Read complete after 0s [id=https://playground.console.ves.volterra.io/api/register/namespaces/system/listregistrationsbystate]

Changes to Outputs:
  + pending = {
      + "mw-green1/m0" = "r-3ad08330-f081-42ef-a4bd-f9c2eb7ba4ae"
      + "mw-green1/m1" = "r-a7b67f03-5be2-4e0d-bae8-fd1dc06d0088"
      + "mw-green1/m2" = "r-cd52f0f2-eaed-4603-b66d-87886985c503"
    }

```
