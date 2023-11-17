package app.pradeep


import future.keywords.contains
import future.keywords.if
import future.keywords.in

# By default, deny requests.
default allow := false

allow if {
	some resource in data.cities
	resource.user_id == input.user_id
	# 	resource.action == input.action
	# 	resource.pool_id == input.pool_id
	# 	resource.tenant_id == input.tenant_id
}

#allow if {
#	some my_city in data.cities
#	my_city.city_name == input.city_name
#}
	
