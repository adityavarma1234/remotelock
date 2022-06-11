require 'spec_helper'
require 'date_converter'

RSpec.describe DateConverter do 
	describe 'Format date to mm/dd/yyyy' do 
		let(:date) { '30-4-1974' }
		let(:date_converter) { DateConverter.new }
		it 'returns date in mm/dd/yyyy format' do 
			expect(date_converter.convert(date)).to eq('4/30/1974')
		end
	end
end