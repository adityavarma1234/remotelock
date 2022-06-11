require 'city_helper'
require 'date_converter'

class FileReader

	FORMAT_DETAILS = {
		percent_format: {
			seperator: " % ",
			date_format: "%Y-%m-%d"
		}, 
		dollar_format: {
			seperator: " $ ",
			date_format: "%d-%m-%Y"
		}
	}

	def initialize(data)
		@data = data
	end

    def read
	    row_details = []
	    date_converter = DateConverter.new
	    city_unabbreviator = CityHelper.new

	    @data[:dollar_format].split("\n").drop(1).map {
	        |row| columns = row.split(FORMAT_DETAILS[:dollar_format][:seperator]).map {|x| x.strip}
	        row_details << "#{columns[3]}, #{city_unabbreviator.unabbreviated_city_name(columns[0])}, #{date_converter.convert(columns[1])}"
	    }

	    @data[:percent_format].split("\n").drop(1).map {
	        |row| columns = row.split(FORMAT_DETAILS[:percent_format][:seperator]).map {|x| x.strip}
	        row_details << "#{columns[0]}, #{city_unabbreviator.unabbreviated_city_name(columns[1])}, #{date_converter.convert(columns[2])}"
	    }        

	    row_details.sort
	end
end