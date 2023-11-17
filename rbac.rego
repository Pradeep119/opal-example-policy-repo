package app.pradeep


import future.keywords.contains
import future.keywords.if
import future.keywords.in

# By default, deny requests.
default allow := false

allow if {
	some pool in data.cities
	input.tenant_id == pool.tenant_id
	input.user_id == pool.user_id
	input.action == pool.action
	input.pool_id == pool.pool_id
}

# allow if {
# 	some my_city in data.hard_cities
# 	my_city.hard_city_name == input.city_name
# 	my_city.hard_city_id == input.city_id
# 	my_city.hard_country_id == input.country_id
# }
	
