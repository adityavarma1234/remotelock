require 'spec_helper'
require 'file_reader'

RSpec.describe FileReader do 
	describe 'reads data based on format available' do 
		let(:file_reader) { FileReader }
		let(:params) do 
			{
				percent_format: File.read('spec/fixtures/people_by_percent.txt'),
				dollar_format: File.read('spec/fixtures/people_by_dollar.txt'),
				order: :first_name
			}
		end
		it 'returns list with values ordered by order in params ' do 
			return_value = file_reader.new(params).read
			expect(return_value).to eq [
		        'Elliot, New York City, 5/4/1947',
		        'Mckayla, Atlanta, 5/29/1986',
		        'Rhiannon, Los Angeles, 4/30/1974',
		        'Rigoberto, New York City, 1/5/1962',
		      ]
			expect(return_value).to be_a(Array)
		end
	end
end