package app.pradeep


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

#allow if {
#	some my_city in data.result.cities
#	my_city.city_name == input.city_name
#}










# Allow the action if the user is granted permission to perform the action.
allow if {
	# Find permissions for the user.
	some permission
	user_is_granted[permission]

	# Check if the permission permits the action.
	input.action == permission.action
	input.type == permission.type
}

user_is_granted contains permission if {
	some i, j

	# `role` assigned an element of the user_roles for this user...
	role := data.users[input.user].roles[i]

	# `permission` assigned a single permission from the permissions list for 'role'...
	permission := data.role_permissions[role][j]
}
	
