require 'date'

class DateConverter

	def convert(date)
		Date.parse(date).strftime("%-m/%-d/%Y")
	end
end