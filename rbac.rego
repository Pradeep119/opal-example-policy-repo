package app.rbac


import future.keywords.contains
import future.keywords.if
import future.keywords.in

# By default, deny requests.
default allow := false

# allow if {
# 	some resource in data.user_resource
# 	resource.user_id == input.user
# 	resource.action == input.action
# 	resource.resource_id == input.resource
# 	resource.tenant_id == input.tenant_id
# }
val := data.city
allow if {
	some resource in data.city
	resource.city_name == input.city_name
}
