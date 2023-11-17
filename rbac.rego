package app.pradeep


import future.keywords.contains
import future.keywords.if
import future.keywords.in

# By default, deny requests.
default allow := false

allow if {
	some pool_resource in data.cities
	pool_resource.tenant_id == input.tenant_id 
	pool_resource.user_id == input.user_id 
	pool_resource.action == input.action 
	pool_resource.pool_id == input.pool_id 
}

pool_list contains name if {
	some pool_resource in data.cities
	pool_resource.user_id == input.user_id
	pool_resource.action == input.action
        name := user_resource.pool_id
}

#allow if {
#	some my_city in data.hard_cities
#	my_city.hard_city_name == input.city_name
#	my_city.hard_city_id == input.city_id
#	my_city.hard_country_id == input.country_id
#} 
	 
