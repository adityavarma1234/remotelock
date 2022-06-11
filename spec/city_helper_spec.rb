require 'spec_helper'
require 'city_helper'

RSpec.describe CityHelper do
	describe 'convert abbreviated city names to unabbreviated city name' do 
		let(:unabbreviated_city) { CityHelper.new }
		let(:la_city_abbreviated) { 'LA' }
		let(:nyc_city_abbreviated) { 'NYC' }

		it 'returns unabbreviated string of abbreviated city LA' do 
			expect(unabbreviated_city.unabbreviated_city_name(la_city_abbreviated)).to eq(CityHelper::ABBREVIATED_KEY_TO_UNABBREVIATED_VALUE[la_city_abbreviated])
		end

		it 'returns unabbreviated string of abbreviated city NYC' do 
			expect(unabbreviated_city.unabbreviated_city_name(nyc_city_abbreviated)).to eq(CityHelper::ABBREVIATED_KEY_TO_UNABBREVIATED_VALUE[nyc_city_abbreviated])
		end
	end	
end