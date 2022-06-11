class CityHelper

	ABBREVIATED_KEY_TO_UNABBREVIATED_VALUE = {
		"LA" => "Los Angeles",
		"NYC" => "New York City"
	}

	def unabbreviated_city_name(city)
		if(ABBREVIATED_KEY_TO_UNABBREVIATED_VALUE.has_key?(city))
			return ABBREVIATED_KEY_TO_UNABBREVIATED_VALUE[city]
		else
			city
		end  
	end
end